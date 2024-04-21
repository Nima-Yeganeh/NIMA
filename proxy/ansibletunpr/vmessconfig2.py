
import sys
import base64
import json
import base64
import json
import re
from pathlib import Path
from urllib.request import urlopen
from pathlib import Path

def main():
    if len(sys.argv) != 4:
        print("Usage: python script.py <username> <DNS> <port_number>")
        return
    username = sys.argv[1]
    dns = sys.argv[2]
    port_number = sys.argv[3]
    domain=""
    zpath="/"
    ztls=""
    ip=dns
    zport=port_number
    uuid="a04be4ef-1797-4ca9-a549-4385ce42494c"
    ps = username + " @v2rayng_ip_vpn | @zizigooloovpn << Telegram" 
    j = json.dumps({
        "v": "2", "ps": ps, "add": ip, "port": zport, "id": uuid, "aid": "0", "net": "ws", "type": "none",
        "host": domain, "path": zpath, "tls": ztls
    })
    print("vmess://" + base64.b64encode(j.encode('ascii')).decode('ascii'))

if __name__ == "__main__":
    main()
