# Docker ARM TranSquidVpn (Transmission - Squid3 - OpenVPN)
Docker image dedicated to ARMv7 processors, hosting a Transmission torrent client with WebUI, and Squid3 HTTP proxy, while connecting to OpenVPN.<br />
Optionaly, the Transmission Web Control WebUI may be installed to replace the standard Transmission WebUI.<br />
<br />
This project is fork from an existing project, modified to work on ARMv7 WD My Cloud EX2 Ultra NAS.<br />
See forked GitHub repository: https://github.com/haugene/docker-transmission-openvpn<br />
<br />
This image is part of a Docker images collection, intended to build a full-featured seedbox, and compatible with WD My Cloud EX2 Ultra NAS (Docker v1.7.0):

Docker Image | GitHub repository | Docker Hub repository
------------ | ----------------- | -----------------
Docker image (ARMv7) hosting a Transmission torrent client with WebUI while connecting to OpenVPN | https://github.com/ahuh/docker-arm-transquidvpn | https://hub.docker.com/r/ahuh/arm-transquidvpn
Docker image (ARMv7) hosting a qBittorrent client with WebUI while connecting to OpenVPN | https://github.com/ahuh/docker-arm-qbittorrentvpn | https://hub.docker.com/r/ahuh/arm-qbittorrentvpn
Docker image (ARMv7) hosting SubZero with MKVMerge (subtitle autodownloader for TV shows) | https://github.com/ahuh/docker-arm-subzero | https://hub.docker.com/r/ahuh/arm-subzero
Docker image (ARMv7) hosting a SickChill server with WebUI | https://github.com/ahuh/docker-arm-sickchill | https://hub.docker.com/r/ahuh/arm-sickchill
Docker image (ARMv7) hosting a Jackett server with WebUI | https://github.com/ahuh/docker-arm-jackett | https://hub.docker.com/r/ahuh/arm-jackett
Docker image (ARMv7) hosting a NGINX server to secure SickRage, Transmission and qBittorrent | https://github.com/ahuh/docker-arm-nginx | https://hub.docker.com/r/ahuh/arm-nginx

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
		--add-host=dockerhost:<docker host IP> \
		--dns=<ip of dns #1> --dns=<ip of dns #2> \
		-p <transmission webui port>:9091 \
		-p <squid3 http proxy port>:3128 \		 
		--cap-add=NET_ADMIN \
		--device=<tunnel network interface> \
		-v <path to torrent dir to scan>:/watchdir \
		-v <path to completed dir>:/downloaddir \
		-v <path to incompleted dir>:/incompletedir \
		-v <path to transmission home dir>:/transmissionhome \
		-v <path to squid3 config dir>:/squidconfig \
		-v <path to squid3 logs dir>:/var/log/squid3 \
		-v /etc/localtime:/etc/localtime:ro \
		-e "INSTALL_TRANSMISSION_WEB_CONTROL=<download and install Transmission Web Control at first start [true/false]>"
		-e "OPENVPN_PROVIDER=<openvpn provider>" \
		-e "OPENVPN_CONFIG=<openvpn configuration>" \
		-e "OPENVPN_USERNAME=<openvpn user name>" \
		-e "OPENVPN_PASSWORD=<openvpn password> \
		-e "OPENVPN_OPTS=--inactive 3600 --ping 10 --ping-exit 60" \
		-e "LOCAL_NETWORK=<local network ip/mask>" \
		-e "DOCKER_NETWORK=<docker network ip/mask>" \
		-e "PUID=<user uid>" \
		-e "PGID=<user gid>" \
		ahuh/arm-transmissionvpn
```
or
```
$ ./docker-run.sh transmission ahuh/arm-transmissionvpn
```
(set parameters in `docker-run.sh` before launch, and generate a `docker-params.sh` to store secret OpenVPN parameters, as described in `docker-run.sh`)

### Configure Transmission and Squid3
The container will use volumes directories to store torrent files, downloaded files, and configuration files.<br />
<br />
You have to create these volume directories with the PUID/PGID user permissions, before launching the container:
```
/watchdir
/downloaddir
/incompletedir
/transmissionhome
/squidconfig
```
Note: the directory `/downloaddir/SickRage` will be used by the SickRage Docker container in order to move tv shows files after download.

The container will automatically create a `settings.json` file in the transmission home dir.<br />
* WARNING : the `settings.json` file will be overwritten automatically at each start. Do not modify it: change parameters in `docker-run.sh` and `docker-params.sh` instead, and recreate the container.
* With PIA VPN, the transmission connection port will be automatically changed at launch if port forwarding is available.

The container will automatically create a `squid.conf` file in the squid3 config dir.<br />
* WARNING : the `squid.conf` file will be overwritten automatically at each start. Do not modify it: change parameters in `docker-run.sh` and `docker-params.sh` instead, and recreate the container.
* The parameters `LOCAL_NETWORK` and `DOCKER_NETWORK` are required by squid3 (source networks allowed for HTTP proxy).
* To connect to the HTTP proxy from the local network or from other Docker containers : just point to the Docker host server, and to the port mapped to 3128.

## HOW-TOs

### Get a new instance of bash in running container
Use this command instead of `docker attach` if you want to interact with the container while it's running:
```
$ docker exec -it transmission /bin/bash
```
or
```
$ ./docker-bash.sh transmission
```

### Build image
```
$ docker build -t arm-transmissionvpn .
```
or
```
$ ./docker-build.sh arm-transmissionvpn
```
