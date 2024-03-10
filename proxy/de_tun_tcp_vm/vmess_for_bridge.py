

import base64
import json
import base64
import json
import re
from pathlib import Path
from urllib.request import urlopen
from pathlib import Path

uuid="a04be4ef-1797-4ca9-a549-4385ce42494c"
domain="imaginativedomainnamesmaketheinternetinterestingsrv1deservice.uniquedomainnameswithcharacterandstylearecool.site"
ipaddr=urlopen("https://ipv4.icanhazip.com/").read().decode().rstrip()
zpath="/ws"
zpath="/"
ztls="tls"
ztls=""
zport="443"
zport="443"
ip = urlopen("https://ipv4.icanhazip.com/").read().decode().rstrip()
port = "443"
uuid = "a04be4ef-1797-4ca9-a549-4385ce42494c"
# security = inbound['settings']['clients'][0]['security']
ps = "{}:{}".format(ip, port)
ps = "@zizigooloovpn"
c = {"add": ip, "aid": "0", "host": "", "id": uuid, "net": "tcp", "path": "", "port": port, "ps": ps,
        "tls": "none", "type": "none", "v": "2"}
j = json.dumps(c)
link = "vmess://" + base64.b64encode(j.encode('ascii')).decode('ascii')
print("\nVMESS:\n" + link)

