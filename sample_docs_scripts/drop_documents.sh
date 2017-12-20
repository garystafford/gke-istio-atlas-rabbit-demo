#!/bin/bash

# clean out all documents from mongodb or cosmos db database collections

urls=(
  'https://api.voter-demo.com/election/drop/elections'
  'https://api.voter-demo.com/candidate/drop/candidates'
  'https://api.voter-demo.com/candidate/drop/elections'
  'https://api.voter-demo.com/voter/drop/candidates'
  'https://api.voter-demo.com/voter/drop/votes'
)

for url in "${urls[@]}"
do
  echo "POSTing to ${url}"
  curl --request POST --url ${url}
done
