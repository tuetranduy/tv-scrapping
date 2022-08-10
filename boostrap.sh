#!/bin/sh
echo '===== cloning source code ... ====='
git clone https://github.com/tuetranduy/tv-scrapping.git
cd tv-scrapping
./install.sh

echo '===== putting username and password to .env file ... ====='
touch .env
echo 'TV_USERNAME=tuetranduy' >> .env
echo 'TV_PASSWORD=tuetranduy123' >> .env

echo '===== starting application ... ====='
export FLASK_APP=api.py
flask run -h 0.0.0.0