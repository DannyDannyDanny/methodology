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
