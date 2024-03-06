
#!/usr/bin/python3

import base64
import json
import base64
import json
import re
from pathlib import Path
from urllib.request import urlopen
from pathlib import Path

path = Path(__file__).parent

config_file = open(str(path.joinpath('v2ray/config/config.json')), 'r', encoding='utf-8')
config = json.load(config_file)

caddy = open(str(path.joinpath('caddy/Caddyfile')), 'r', encoding='utf-8').read()

uuid = config['inbounds'][0]['settings']['clients'][0]['id']
domain = caddy[:caddy.find(' {')]

domain="www.digitalocean.com"
# domain="denewcdn1.zizigooloovpn.com"
ipaddr="188.213.199.195"
ipaddr = urlopen("https://ipv4.icanhazip.com/").read().decode().rstrip()
zpath="/ws"
zpath="/"
ztls="tls"
ztls=""
zport="443"
zport="8080"

j = json.dumps({
    "v": "2", "ps": "@zizigooloovpn", "add": ipaddr, "port": zport, "id": uuid, "aid": "0", "net": "ws", "type": "none",
    "host": domain, "path": zpath, "tls": ztls
})

print("vmess://" + base64.b64encode(j.encode('ascii')).decode('ascii'))

