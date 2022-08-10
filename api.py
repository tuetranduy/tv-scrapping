import json
import os

from flask import Flask, request
from tvDatafeed import TvDatafeed

from utils import get_time_interval

app = Flask(__name__)

username = os.environ.get("TV_USERNAME")
password = os.environ.get("TV_PASSWORD")
tv = TvDatafeed(username, password)


@app.route("/")
def index():
    return {"status": True}


@app.post("/getData")
def get_data():
    request_data = request.json

    symbol = request_data['symbol']
    exchange = request_data['exchange']
    interval = get_time_interval(request_data['interval'])
    n_bars = request_data['bars']
    fut_contract = request_data['isFutureContract']

    raw_index_data = tv.get_hist(symbol=symbol,
                                 exchange=exchange,
                                 interval=interval,
                                 n_bars=n_bars,
                                 fut_contract=fut_contract)

    print(raw_index_data)

    if raw_index_data is None:
        return {"data": []}
    else:
        json_index_data = raw_index_data.to_json(orient='table')
        parsed_index_data = json.loads(json_index_data)
        return parsed_index_data
