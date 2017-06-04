#! /bin/bash

kill -9 `ps aux | grep squid | grep -v grep | awk '{print $2}'`
