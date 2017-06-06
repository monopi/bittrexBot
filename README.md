Questions feel free to ask

# bittrexBot
This is an experimental bot for trading against the bittrex exchange

# DISCLAIMER

### I am not responsible for anything done with this bot. You use it at your own risk. There are no warranties or guarantees expressed or implied. You assume all responsibility and liability.

## Configuration

#### Note: An api key will need to be created with "Trade Limit" permissions

* apiKey - api key
* apiSecret - api key secret
* trade - the base token used for exchange
* currency - the token ticker to be traded
* valuePercent - the difference in the buy / sell price of the order placed
* sellVolumePercent - how many tokens are traded during a transaction
* buyVolumePercent - how many tokens to purchase. Set this number higher than the sellVolumePercent to accumulate more tokens...set it lower to purge tokens
* extCoinBalance - off exchange token count
* checkInterval - how often the bot will check for orders

The percentage values are actual percentages...not decimals. So if you want to trade 3.25% you would input 3.25 in that value. I would also not recommend going below 20 seconds for the checkInterval. Otherwise, it's possible to induce a race condition with bittrex.

#### Example file 

```json
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
```
__the config file MUST be named botConfig.json__

## Usage
The bot is designed to trade a single token at a time. It's recommended to run it in the docker container. 
The docker image can be found at __jufkes/bittrexBot__

To run:
docker run -d --name <name> -v /path/to/config/file:/opt/bittrexBot/config jufkes/bittrexbot:latest

## Donations

If this bot helped you out and you want to show your appreciation, feel free to donate some btc to '1D3adR2c3M4Ne9YmmNxKrfcG3SPebcZWJd'
