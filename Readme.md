# XMRig Proxy Docker Image

![Docker Pulls](https://img.shields.io/docker/pulls/ariizona/xmrig-proxy) ![Docker Latest Build](https://img.shields.io/docker/v/ariizona/xmrig-proxy?sort=semver) 

This image contain the [latest version](https://github.com/xmrig/xmrig-proxy/releases/latest) of [xmrig-proxy](https://xmrig.com/proxy). 

## Usage

Easy:
Edit and use included docker-compose file !

Start with `docker compose up -d`

**⚠️You should set environment variables before run it!⚠️**

*OR* 

Start it with docker run command:

```sh
docker run -d -e POOL='<your pool url>' \ 
-e USER='<your username of wallet here>' \
-e PASSWORD='<your password on pool>' \
-e ALGO='<needed mining algorithm>' \
-p 3333:3333 \
-p 3334:3334 \
--name xmrig-proxy ariizona/xmrig-proxy:latest
```

For example (minimal command):

```sh
docker run --rm -d -e POOL='pool.supportxmr.com:5555' -e USER='46bDdBeUmSQDwma1Xqps51PQZsUw39JGXAsPb13zmhDB4wssWVDCn5KeUA2nFUJnvMNftJaE7UExoEensVw26dXHCUUhd28' -p 3333:3333 ariizona/xmrig-proxy:latest
```

## Environment variables

| Name | Default value | Equal command | Description |
| ------ | ------ | ------ | ------ |
| USER | NaN | -u, --user=USR | username for mining server / wallet
| POOL | pool.supportxmr.com:5555 | -o, --url=URL | URL of mining server
| PASSWORD | x | -p, --pass=PWD | password for mining server
| ALGO | rx/0 | -a, --algo=ALGO | mining algorithm https://xmrig.com/docs/algorithms
| DONATE_LEVEL | 0 | --donate-level=N | [donate](https://github.com/xmrig/xmrig-proxy#donations) level
| RETRY_SWITCH_POOL | 5 | -r, --retries=N | number of times to retry before switch to backup server
| RETRY_TIMEOUT_SECONDS | 5 | -R, --retry-pause=N | time to pause between retries

## Todo

- Add more options

## Donations

By default in this image default donation fee disabled. Donation fee applies only if you use more than 256 miners.
You can donate me some coins to buy ☕coffee☕ here:
* Original author XMR: `46bDdBeUmSQDwma1Xqps51PQZsUw39JGXAsPb13zmhDB4wssWVDCn5KeUA2nFUJnvMNftJaE7UExoEensVw26dXHCUUhd28`
* Fork author XMR: `8BFwxFWNePiRKXSRtaTcvHVkjCiJse7JjaSJzdcNWskQEwD412Tj3ZDB782vaAq45E6x8dsQgXdxZ6mmmFhRXZfs9k6yG7w`
