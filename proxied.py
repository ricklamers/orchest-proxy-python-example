import requests
import orchest

resp = requests.get("http://icanhazip.com")

print(resp.content)

orchest.output(resp.content, name="data")