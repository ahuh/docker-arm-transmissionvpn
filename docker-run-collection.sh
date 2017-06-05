#!/bin/bash

# =======================================================================================
# Run Docker Collection containers
#
# Launch the Docker Run scripts for each container in collection.
# This scripts requires cloning of all GitHub projects of the collection in the same root dir. 
# =======================================================================================

# Functions
callRun(){
	local DOCKER_NAME=$1
	local DOCKER_DIR_PATH=$2
	if [[ -f "${DOCKER_DIR_PATH}/docker-run.sh" ]]; then
		echo "Run ${DOCKER_NAME}"
		( ${DOCKER_DIR_PATH}/docker-run.sh )
	fi
}

# Call run scripts for each Docker container

# 1) transquidvpn
callRun transquidvpn .

# 2) qbittorrentvpn
#callRun qbittorrentvpn ../docker-arm-qbittorrentvpn

# 3) subzero
callRun subzero ../docker-arm-subzero

# 4) sickrage
callRun sickrage ../docker-arm-sickrage

# 5) nginx
callRun nginx ../docker-arm-nginx
