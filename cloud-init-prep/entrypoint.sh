#!/usr/bin/env bash

env | grep -iq "CLOUD_INIT_FILES" || CLOUD_INIT_FILES="false"

if [[ ${CLOUD_INIT_FILES} != "false" ]]
then
    if [[ -e /cloud-init/seed.iso ]]
    then
        echo "seed.iso already exists, skipping cloud-init-prep"
    else
        cloud-localds -v /cloud-init/seed.iso ${CLOUD_INIT_FILES}
    fi
else
    echo "CLOUD_INIT_FILES is not set, skipping cloud-init-prep"
fi
