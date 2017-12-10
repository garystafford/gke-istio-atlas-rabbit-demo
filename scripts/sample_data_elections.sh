#!/bin/bash

# Drop all elections and POST new elections to Cosmos DB

url="https://api.voter-demo.com"
# url="http://localhost:8095"

elections=(
  '{"date":"2012-11-06","electionType":"FEDERAL","title":"2012 Presidential Election","description":"57th quadrennial American presidential election"}'
  '{"date":"2016-11-08","electionType":"FEDERAL","title":"2016 Presidential Election","description":"58th quadrennial American presidential election"}'
  '{"date":"2024-11-06","electionType":"STATE","title":"2018 New York Gubernatorial Election","description":"Elect the Governor of New York"}'
  '{"date":"2017-11-07","electionType":"LOCAL","title":"2017 New York City Mayoral Election","description":"Elect the Mayor of the City of New York"}'
  '{"date":"2018-11-06","electionType":"FEDERAL","title":"2018 United States Senate Elections","description":"Elections to the United States Senate"}'
)

echo "Dropping all existing elections documents from candidates DB..."
curl --request POST --url ${url}/candidate/drop/elections

echo "Dropping all existing elections documents from elections DB..."
curl --request POST --url ${url}/election/drop/elections

echo ""

for election in "${elections[@]}"
do
  echo "POSTing ${election}"
  curl --request POST \
   --url ${url}/election/elections \
   --header 'content-type: application/json' \
   --data "${election}"
done
