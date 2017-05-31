# bittrexBot
This is an experimental bot for trading against the bittrex exchange

# DISCLAIMER

### I am not responsible for anything done with this bot. You use it at your own risk. There are no warranties or guarantees expressed or implied. You assume all responsibility and liability.


## Flow

The bot walks through the following:

* Checks for the existence of any orders in your orderbook. If both a buy and sell exist the flow ends and the bot will wait for the next cycle. 
* Checks for multiple orders. If there are, it will remove the last order(s)
* If either a buy or sell order are absent in your orderbook, the bot assumes your last order was within the bounds of the market and prepares to place a new buy/sell at the configured percentage above / below that order price
Example: if the last order in your orderbook was a sell for .0001000, the bot will prepare a new sell of .000104 (if 4% is configured) and a buy of .000096
* Assuming a new order set is needed, it will remove remaining orders for the token
* Place a new order set with the volume percentage configured

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

#### Note on Bittrex Transactions: If the transaction is less than .0005 sat, bittrex will ignore the order. So if you have a low volume of cheap tokens you'll have to leverage more volume.

The percentage values are actual percentages...not decimals. So if you want to trade 3.25% you would input 3.25 in that value. I would also not recommend going below 20 seconds for the checkInterval. Otherwise, it's possible to induce a race condition with bittrex.

#### Fees notice: The configurations currently do not take into account Bittrex's .0025% fee. This is planned for a later interation.

#### Example file 

```json
{
  "apiKey": "34234898u9rghk",
  "apiSecret": "238ryfiuahskuqh4ri",
  "trade": "BTC",
  "currency": "WAVES",
  "valuePercent": 4,
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
