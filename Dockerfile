FROM python:3.9-buster

WORKDIR /tv-scrapping

COPY . .

RUN pip install -r requirements.txt
RUN apt update && apt install git
RUN pip install --upgrade --no-cache-dir git+https://github.com/StreamAlpha/tvdatafeed.git
CMD ["export", "FLASK_APP=api.py"]
CMD ["flask", "run", "-h", "0.0.0.0"]