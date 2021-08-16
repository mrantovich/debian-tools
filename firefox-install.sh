#!/bin/bash

wget https://ftp.mozilla.org/pub/firefox/releases/61.0/linux-x86_64/en-US/firefox-61.0.tar.bz2
mv firefox-61.0.tar.bz2 /opt/firefox.tar.bz2
cd /opt
tar xjvf firefox.tar.bz2
rm firefox.tar.bz2
cd -
cp files/firefox-stable.desktop /usr/share/applications/firefox-stable.desktop
ln -s /opt/firefox/firefox /usr/local/bin
update-alternatives --install /usr/bin/x-www-browser x-www-browser /opt/firefox/firefox 200
update-alternatives --set x-www-browser /opt/firefox/firefox
