#!/bin/sh

echo '===== allowing firewall ... ====='
sudo ufw allow 5000
sudo ufw allow 80

echo '===== install apache2 ... ====='
sudo apt-get -y install apache2

echo '===== starting apache2 service ... ====='
sudo service apache2 restart

echo '===== installing dependencies ... ====='
/usr/bin/python3 -m pip install virtualenv
/usr/bin/python3 -m virtualenv venv
. venv/bin/activate
pip install -r requirements.txt
pip install --upgrade --no-cache-dir git+https://github.com/StreamAlpha/tvdatafeed.git