#!/bin/bash

api_result=$(curl -s -H "X-CMC_PRO_API_KEY: 9923d764-1e22-4462-8293-ec5fd3555400" -H "Accept: application/json" -d "slug=bitcoin,ethereum" -G https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest)

btc_price=$(echo $api_result | jq '.["data"]["1"]["quote"]["USD"]["price"]')
btc_change_24h=$(echo $api_result | jq '.["data"]["1"]["quote"]["USD"]["percent_change_24h"]')
btc_formatted_price=$(printf "%.1f" $btc_price)
btc_formatted_change_24h=$(printf "%.2f" $btc_change_24h)

eth_price=$(echo $api_result | jq '.["data"]["1027"]["quote"]["USD"]["price"]')
eth_change_24h=$(echo $api_result | jq '.["data"]["1027"]["quote"]["USD"]["percent_change_24h"]')
eth_formatted_price=$(printf "%.1f" $eth_price)
eth_formatted_change_24h=$(printf "%.2f" $eth_change_24h)

echo BTC $btc_formatted_price/$btc_formatted_change_24h% "|" ETH $eth_formatted_price/$eth_formatted_change_24h%
