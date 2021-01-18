#!/bin/bash

cd /tmp/
wget https://files.dev47apps.net/linux/droidcam_latest.zip
unzip droidcam_latest.zip -d droidcam
cd droidcam && sudo ./install-client
sudo apt install linux-headers-`uname -r` gcc make
sudo ./install-video
sudo ./install-sound
