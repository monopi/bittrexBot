FROM python:2.7

RUN mkdir /opt/bittrexBot/
COPY . /opt/bittrexBot/
WORKDIR /opt/bittrexBot/

ENTRYPOINT ["python", "bot.py"]
