"""
prints my favorite emojis

* fetch all emojis
* filter by shortcode
  * max string length: 7
  * must be in dictionary:
"""
import json
import requests
from pathlib import Path
import pandas as pd


def is_in_dict(word):
    print(f'looking up {word}')
    url =  f'https://api.dictionaryapi.dev/api/v2/entries/en/{word}'
    r = requests.get(url)
    if r.status_code in (200, 404):
        json_data = r.json()
        if isinstance(json_data, list):
            return True
        if isinstance(json_data, dict):
            return False
    raise RuntimeError(f'dict request status code: {r.status_code}')


def fetch_emojis():
    fname = 'emojis.json'
    if not Path(fname).exists():
        url = 'https://gist.githubusercontent.com/'
        url += 'oliveratgithub/0bf11a9aff0d6da7b46f1490f86a71eb/'
        url += 'raw/d8e4b78cfe66862cf3809443c1dba017f37b61db/emojis.json'
        r = requests.get(url)
        # for chunk in r.iter_content(chunk_size=512 * 1024):
        if r.status_code != 200:
            raise RuntimeError(f'emoji request status code: {r.status_code}')
        f = open(fname, 'wb')
        for chunk in r.iter_content(chunk_size=512 * 1024):
            if chunk:
                f.write(chunk)
        f.close()
    return json.loads(Path(fname).read_text())['emojis']


outfile = 'emojis.pkl'
if Path(outfile).exists():
    print('loading cached shortname lookups')
    df_emojis = pd.read_pickle(outfile)
else:
    emojis = fetch_emojis()
    df_emojis = pd.DataFrame(emojis)
    # filter by length
    df_emojis = df_emojis[df_emojis.shortname.str.len().isin(range(6,10))]
    # check if shortname in dictionary
    print('looking up shortnames')
    df_emojis['realword'] = (
            df_emojis
            .shortname
            .str.replace(':', '')
            # .apply(lambda x: is_in_dict(x))
            )
    # df_emojis.to_pickle(outfile)

df_emojis = df_emojis[df_emojis.realword]
selected_columns = ['emoji', 'shortname', 'category']
print(df_emojis[selected_columns].to_markdown())

df_emojis['escaped'] = df_emojis.shortname.apply(lambda x: f'`{x}`')
selected_columns = ['emoji', 'shortname', 'escaped']
emojis_md_str = df_emojis[selected_columns].to_markdown(index=False)

outfile_md = 'emojis.md'
print(f'writing markdown file: {outfile_md}')
Path(outfile_md).write_text(emojis_md_str)
