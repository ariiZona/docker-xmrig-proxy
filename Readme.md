# XMRig Proxy Docker Image

![Docker Pulls](https://img.shields.io/docker/pulls/molecul/xmrig-proxy) ![Docker Build Status](https://img.shields.io/docker/build/molecul/xmrig-proxy) 

This image contain the [latest version](https://github.com/xmrig/xmrig-proxy/releases/latest) of [xmrig-proxy](https://xmrig.com/proxy). 

## Usage

**⚠️You should set environment variables before run it!⚠️**

Start it with docker run command:

```sh
docker run -d -e POOL='<your pool url>' \ 
-e WALLET='<your username of wallet here>' \
-e PASSWORD='<your password on pool>' \
-e ALGO='<needed mining algorithm>' \
-p 3333:3333 \
-p 3334:3334 \
--name xmrig-proxy molecul/xmrig-proxy:latest
```

For example (minimal command):

```sh
docker run --rm -d -e POOL='pool.supportxmr.com:5555' -e WALLET='46bDdBeUmSQDwma1Xqps51PQZsUw39JGXAsPb13zmhDB4wssWVDCn5KeUA2nFUJnvMNftJaE7UExoEensVw26dXHCUUhd28' -p 3333:3333 molecul/xmrig-proxy:latest
```

## Environment variables

| Name | Default value | Equal command | Description |
| ------ | ------ | ------ | ------ |
| WALLET | NaN | -u, --user=USR | username for mining server / wallet
| POOL | pool.supportxmr.com:5555 | -o, --url=URL | URL of mining server
| PASSWORD | x | -p, --pass=PWD | password for mining server
| ALGO | rx/0 | -a, --algo=ALGO | mining algorithm https://xmrig.com/docs/algorithms
| DONATE_LEVEL | 0 | --donate-level=N | [donate](https://github.com/xmrig/xmrig-proxy#donations) level
| RETRY_SWITCH_POOL | 2 | -r, --retries=N | number of times to retry before switch to backup server
| RETRY_TIMEOUT_SECONDS | 1 | -R, --retry-pause=N | time to pause between retries

## Todo

- Add docker-compose file
- Add more options

## Donations

By default in this image default donation fee disabled. Donation fee applies only if you use more than 256 miners.
You can donate me some coins to buy ☕coffee☕ here:
* XMR: `46bDdBeUmSQDwma1Xqps51PQZsUw39JGXAsPb13zmhDB4wssWVDCn5KeUA2nFUJnvMNftJaE7UExoEensVw26dXHCUUhd28`
