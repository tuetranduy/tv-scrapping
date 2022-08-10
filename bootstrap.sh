#!/bin/sh
/usr/bin/python3 -m pip install virtualenv
/usr/bin/python3 -m virtualenv venv
. venv/bin/activate
pip install -r requirements.txt
pip install --upgrade --no-cache-dir git+https://github.com/StreamAlpha/tvdatafeed.git
touch .env
export FLASK_APP=api.py
flask run -h 0.0.0.0