#!/bin/bash

if [ ! -f /etc/apt/sources.list.d/deb-multimedia.list ]; then
    echo "deb http://www.deb-multimedia.org stretch main non free" >> /etc/apt/sources.list.d/deb-multimedia.list
    wget http://www.deb-multimedia.org/pool/main/d/deb-multimedia-keyring/deb-multimedia-keyring_2016.8.1_all.deb
    dpkg -i deb-multimedia-keyring_2016.8.1_all.deb
    rm deb-multimedia-keyring_2016.8.1_all.deb
fi