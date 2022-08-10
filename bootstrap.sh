#!/bin/sh
/usr/bin/python3 -m pip install virtualenv
/usr/bin/python3 -m virtualenv venv
pip install requirements.txt
touch .env
export FLASK_APP=api.py
source venv/bin/activate
flask run -h 0.0.0.0