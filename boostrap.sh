#!/bin/sh
echo '===== cloning source code ... ====='
git clone https://github.com/tuetranduy/tv-scrapping.git
sudo chmod 775 -R tv-scrapping
cd tv-scrapping
./install.sh

echo '===== putting username and password to .env file ... ====='
touch .env
echo 'TV_USERNAME=' >> .env
echo 'TV_PASSWORD=' >> .env

echo '===== starting application ... ====='
export FLASK_APP=api.py
pythonw -m flask run -h 0.0.0.0