#! /bin/bash

# Import template function
. /etc/common/template.sh

# Source our persisted env variables from container startup
. /etc/common/environment-variables.sh

echo "Generating squid3 squid.conf from env variables"
# Ensure squid config dir is created
mkdir -p /squidconfig
template /etc/squid3/squid.conf.tmpl > /squidconfig/squid.conf

. /etc/squid3/userSetup.sh

echo "STARTING SQUID3"
exec sudo -u ${RUN_AS} squid3 -f /squidconfig/squid.conf &
