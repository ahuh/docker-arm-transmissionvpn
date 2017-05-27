# Docker Transmission with OpenVPN
Docker image hosting a Transmission torrent client with WebUI while connecting to OpenVPN.<br />
<br />
This project is fork from an existing project, modified to work on ARMv7 WD My Cloud EX2 Ultra NAS.<br />
See forked GitHub repository: https://hub.docker.com/r/haugene/transmission-openvpn<br />
<br />
This image is part of a Docker images collection, intended to build a full-featured seedbox.<br />
This image is compatible with WD My Cloud EX2 Ultra NAS.<br />

## Installation

### Preparation
Before running container, you have to retrieve UID and GID for the user used to mount your torrents data directory:
* Get user UID:
```
$ id -u <user>
```
* Get user GID:
```
$ id -g <user>
```
The container will run impersonated as this user, in order to have read/write access to the torrents data directory.

### Run container in background
```
$ docker run --name transmission --restart=always -d \
              -p ${P_PORT}:9091 --cap-add=NET_ADMIN \
              --device=<tunnel network interface> \
              -v <path to torrents data dir>:/data \
              -v /etc/localtime:/etc/localtime:ro \
              -e "OPENVPN_PROVIDER=<openvpn provider>" \
              -e "OPENVPN_CONFIG=<openvpn configuration>" \
              -e "OPENVPN_USERNAME=<openvpn user name>" \
              -e "OPENVPN_PASSWORD=<openvpn password> \
              -e "OPENVPN_OPTS=--inactive 3600 --ping 10 --ping-exit 60" \
              -e "LOCAL_NETWORK=<local network ip/mask>" \
              -e "PUID=<user uid>" \
              -e "PGID=<user gid>" \
              ahuh/transmission-openvpn
```
or
```
$ docker-run.sh transmission ahuh/transmission-openvpn
```
(set parameters in `docker-run.sh` before launch, and generate a `docker-params.sh` to store secret OpenVPN parameters, as described in `docker-run.sh`)

### Configure Transmission
The container will automatically create sub-directories and configuration files in torrents data dir (if empty before).

## HOW-TOs

### Get a new instance of bash in running container
Use this command instead of `docker attach` if you want to interact with the container while it's running:
```
$ docker exec -it transmission /bin/bash
```
or
```
$ docker-bash.sh transmission
```

### Build image
```
$ docker build -f Dockerfile.armhf -t transmission-openvpn .
```
or
```
$ docker-build.sh transmission-openvpn
```
