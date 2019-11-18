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
		( cd ${DOCKER_DIR_PATH} ; ./docker-run.sh )
	fi
}

# Call run scripts for each Docker container

# 1) transquidvpn
callRun transquidvpn .

# 2) medusa
callRun medusa ../docker-arm-medusa

# 3) nginx
callRun nginx ../docker-arm-nginx
