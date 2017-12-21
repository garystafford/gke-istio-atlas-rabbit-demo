#!/bin/bash

# post new random elections to mongodb or cosmos db

url="https://api.voter-demo.com"

for i in {1..100}
do
  echo "POSTing ${election}"
  ELECTION=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9 ' | fold -w 32 | head -n 1)
  ELECTION_TYPE=$(cat /dev/urandom | tr -dc 'A-Z' | fold -w 12 | head -n 1)
  DESCRIPTION=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9 ' | fold -w 64 | head -n 1)
  curl --request POST \
   --url ${url}/election/elections \
   --header 'content-type: application/json' \
   --data "{\"date\":\"2018-11-06\",\"electionType\":\"${ELECTION_TYPE}\",\"title\":\"$ELECTION\",\"description\":\"$DESCRIPTION\"}"
done
