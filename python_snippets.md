## database file-caching

```
from pathlib import Path
from snowflake.connector import connect
import pandas as pd
import hashlib

def get_df(query, env, use_cache=True):
    print(f'{query[:100] = }')
    if env == "prod":
        role = "COSUTMER"
        warehouse = "CLOWN_COSTUMES"
    elif env == "sand":
        role = "CUSTOMER"
        warehouse = "CUSTOMER_INFORMATION"
    else:
        raise ValueError(f"env must be prod or sand - recieved: {env}")

    hash_query_4_digits = hashlib.shake_128(query.encode()).hexdigest(4)
    cache_pkl_path = Path(f"/tmp/cache-{env}-{hash_query_4_digits}.pkl")
    print(cache_pkl_path.exists(), cache_pkl_path)
    if cache_pkl_path.exists() and use_cache:
        print('loading cached data')
        df = pd.read_pickle(cache_pkl_path)
        return df

    print("fetching & caching data")
    with connect(
        authenticator="externalbrowser",
        user="dnth@lundbeck.com",
        account=f"lundbeck-hlu{env}",
        role=role,
        warehouse=warehouse,
    ) as con:
        cur = con.cursor()
        cur.execute(query)
        df = cur.fetch_pandas_all()
        df.to_pickle(cache_pkl_path)
        return df
```


## Python Kernel Management
```
# install new kernel "my_new_env"
ipykernel install --user --name=my_new_env

# remove kernel "my_old_env"
jupyter kernelspec list
jupyter kernelspec remove my_old_env
```

## Sound snippet

Add the snippet to the end of your notebook to alert you when it's done running.

```
from IPython.display import Audio, display
# https://www2.cs.uic.edu/~i101/SoundFiles/
url1 = 'https://www2.cs.uic.edu/~i101/SoundFiles/StarWars3.wav'
url2 = 'https://sound.peal.io/ps/audios/000/000/537/original/woo_vu_luvub_dub_dub.wav'
url3 = 'https://www2.cs.uic.edu/~i101/SoundFiles/CantinaBand3.wav'
display(Audio(url=url3, autoplay=True))
```
