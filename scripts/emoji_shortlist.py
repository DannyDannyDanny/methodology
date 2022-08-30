"""prints my favorite emojis"""

* fetch all emojis
* filter by shortcode
  * max string length: 7
  * must be in dictionary:
"""

def fetch_emojis():
  return emojis_dict

def is_in_dict():
  return True

import json
import requests
app_id  = "<my_app_id>"
app_key  = "<my_app_key>"
endpoint = "entries"
language_code = "en-us"
word = 'hello'
url =  f'https://api.dictionaryapi.dev/api/v2/entries/en/{word}'
r = requests.get(url)
print("code {}\n".format(r.status_code))
print("text \n" + r.text)
print("json \n" + json.dumps(r.json()))
