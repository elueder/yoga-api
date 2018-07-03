#!/bin/bash

curl "http://localhost:4741/sequences" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "sequence": {
      "name": "'"${NAME}"'",
      "descripton": "'"${DESCRIPTION}"'"
    }
  }'

echo