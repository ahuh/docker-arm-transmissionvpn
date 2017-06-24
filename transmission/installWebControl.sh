#! /bin/bash

TWC_INSTALLED_FILE=/etc/transmission/twc_installed

if [ "${INSTALL_TRANSMISSION_WEB_CONTROL}" = true ] && [ ! -e "${TWC_INSTALLED_FILE}" ] ; then
	# First start of the docker container with INSTALL_TRANSMISSION_WEB_CONTROL env enabled: install Transmission Web Control from GitHub
	echo "INSTALL TRANSMISSION WEB CONTROL"	
	CURRENTDIR=${PWD}
	
	cd /etc/transmission/
	wget https://github.com/ronggang/transmission-web-control/raw/master/release/tr-control-easy-install-en.sh
	chmod +x tr-control-easy-install-en.sh
	. ./tr-control-easy-install-en.sh
	
	cd ${CURRENTDIR}	
	touch ${TWC_INSTALLED_FILE}
fi
