import os

from tvDatafeed import TvDatafeed

username = os.environ.get("TV_USERNAME")
password = os.environ.get("TV_PASSWORD")

tv = TvDatafeed(username, password)
