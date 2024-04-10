
import base64
import json
import base64
import json
import re
from pathlib import Path
from urllib.request import urlopen
from pathlib import Path

uuid="a04be4ef-1797-4ca9-a549-4385ce42494c"
ipaddr=urlopen("https://ipv4.icanhazip.com/").read().decode().rstrip()
ip = urlopen("https://ipv4.icanhazip.com/").read().decode().rstrip()
domain=""
zpath="/"
ztls=""

zport="35023"
ps = "SRV23 @v2rayng_ip_vpn | @zizigooloovpn << Telegram"

j = json.dumps({
    "v": "2", "ps": ps, "add": ipaddr, "port": zport, "id": uuid, "aid": "0", "net": "ws", "type": "none",
    "host": domain, "path": zpath, "tls": ztls
})
print("vmess://" + base64.b64encode(j.encode('ascii')).decode('ascii'))
