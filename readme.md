## What is TorGhost ?
TorGhost is an anonymization script. TorGhost redirects all internet traffic through SOCKS5 tor proxy. DNS requests are also redirected via tor, thus preventing DNSLeak. The scripts also disables unsafe packets exiting the system. Some packets like ping request can compromise your identity.

Update Paulus88: Small change to build.sh to make it install with Python 3.11.

## Build and install from source
`git clone https://github.com/Paulus88/torghost.git`

`cd torghost`

`chmod +x build.sh`

`./build.sh`

## Cleanup install
`cd .. && rm -R torghost`

## Usage
Torghost v3.1.1 usage:

`  -s      --start        Start Torghost`

`  -r      --switch       Request new tor exit node`

`  -x      --stop         Stop Torghost`

`  -h      --help         Print this help and exit`

`  -u      --update       Checks for updates`

All credits go to SusmithKrishnan https://github.com/SusmithKrishnan.
