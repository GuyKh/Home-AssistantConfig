#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'Usage: hass_secret secret_key'
    exit 0
fi

cmd="cat /config/secrets.yaml | grep ^$1: | sed -n -e 's/^.*$1: //p'"
eval $cmd
