Questions, feel free to reach out.

# bittrexBot
This is an experimental bot for trading against the bittrex exchange

# DISCLAIMER

### I am not responsible for anything done with this bot. You use it at your own risk. There are no warranties or guarantees expressed or implied. You assume all responsibility and liability.

{
  "apiKey": "34234898u9rghk",
  "apiSecret": "238ryfiuahskuqh4ri",
  "trade": "BTC",
  "currency": "WAVES",
  "sellValuePercent": 4,
  "buyValuePercent": 7,
  "sellVolumePercent": 3,
  "buyVolumePercent": 3,
  "extCoinBalance": 0,
  "checkInterval": 30
}

## Usage
The bot is designed to trade a single token at a time. It's recommended to run it in the docker container. 
The docker image can be found at __jufkes/bittrexBot__

To run:
docker run -d --name <name> -v /path/to/config/file:/opt/bittrexBot/config jufkes/bittrexbot:latest

## Donations

If this bot helped you out and you want to show your appreciation, feel free to donate some btc to '1D3adR2c3M4Ne9YmmNxKrfcG3SPebcZWJd'
