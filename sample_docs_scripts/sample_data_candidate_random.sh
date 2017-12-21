#!/bin/bash

# post new random candidates to mongodb or cosmos db

url="https://api.voter-demo.com"

echo "Dropping all existing candidate documents from votes DB..."
echo "POSTing ${url}/voter/drop/candidates"
curl --request POST --url ${url}/voter/drop/candidates

echo "Dropping all existing candidate documents from candidates DB..."
echo "POSTing ${url}/candidate/drop/candidates"
curl --request POST --url ${url}/candidate/drop/candidates

echo ""

for i in {1..100}
do
  echo "POSTing ${election}"
  FIRST_NAME=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
  LAST_NAME=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 12 | head -n 1)
  STATE=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9 ' | fold -w 8 | head -n 1)
  PARTY=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9 ' | fold -w 18 | head -n 1)
  ELECTION=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9 ' | fold -w 32 | head -n 1)
  EXPERIENCE=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9 ' | fold -w 96 | head -n 1)
  curl --request POST \
   --url ${url}/candidate/candidates \
   --header 'content-type: application/json' \
   --data "{\"firstName\":\"${FIRST_NAME}\",\"lastName\":\"${LAST_NAME}\",\"politicalParty\":\"${PARTY}\",\"election\":\"${ELECTION}\",\"homeState\":\"${STATE}\",\"politcalExperience\":\"${EXPERIENCE}\"}"
done
