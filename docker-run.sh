#!/bin/sh

# =======================================================================================
# Run Docker container
#
# The container is launched in background as a daemon. It is configured to restart
# automatically, even after host OS restart, unless it is stopped manually with the
# 'docker stop' command 
# =======================================================================================

# Parameters

# Add a 'docker-params.sh' file to set the following variables:
# export E_OPENVPN_PROVIDER=XXX
# export E_OPENVPN_CONFIG=XXX
# export E_OPENVPN_USERNAME=XXX
# export E_OPENVPN_PASSWORD=XXX
# export E_TRANSMISSION_RPC_AUTHENTICATION_REQUIRED=true
# export E_TRANSMISSION_RPC_USERNAME=XXX
# export E_TRANSMISSION_RPC_PASSWORD=XXX
. docker-params.sh

export DEVICE=/dev/net/tun
export V_WATCH_DIR=/shares/P2P/tools/transmission/torrent
export V_DOWNLOAD_DIR=/shares/P2P/tools/transmission/completed
export V_INCOMPLETE_DIR=/shares/P2P/tools/transmission/incomplete
export V_TRANSMISSION_HOME=/shares/P2P/tools/transmission/home
export P_PORT=9091
export E_LOCAL_NETWORK=192.168.0.0/24
export E_PUID=500
export E_PGID=1000

if [[ $# != 2 ]] ; then
    echo ''
    echo 'Usage: docker-run.sh <docker-container-name> <docker-image-name>'
    echo ''
    exit 1
fi

export CONTAINER_NAME=$1
export IMAGE_NAME=$2

# Commands
docker run --name ${CONTAINER_NAME} --restart=always -d -p ${P_PORT}:9091 --cap-add=NET_ADMIN --device=${DEVICE} -v ${V_WATCH_DIR}:/watchdir -v ${V_DOWNLOAD_DIR}:/downloaddir -v ${V_INCOMPLETE_DIR}:/incompletedir -v ${V_TRANSMISSION_HOME}:/transmissionhome -v /etc/localtime:/etc/localtime:ro -e "OPENVPN_PROVIDER=${E_OPENVPN_PROVIDER}" -e "OPENVPN_CONFIG=${E_OPENVPN_CONFIG}" -e "OPENVPN_USERNAME=${E_OPENVPN_USERNAME}" -e "OPENVPN_PASSWORD=${E_OPENVPN_PASSWORD}" -e "TRANSMISSION_RPC_AUTHENTICATION_REQUIRED=${E_TRANSMISSION_RPC_AUTHENTICATION_REQUIRED}" -e "TRANSMISSION_RPC_USERNAME=${E_TRANSMISSION_RPC_USERNAME}" -e "TRANSMISSION_RPC_PASSWORD=${E_TRANSMISSION_RPC_PASSWORD}" -e "OPENVPN_OPTS=--inactive 3600 --ping 10 --ping-exit 60" -e "LOCAL_NETWORK=${E_LOCAL_NETWORK}" -e "PUID=${E_PUID}" -e "PGID=${E_PGID}" ${IMAGE_NAME}