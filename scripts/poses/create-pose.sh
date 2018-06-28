#!/bin/bash

curl "http://localhost:4741/poses" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "pose": {
      "pose_name": "'"${POSE}"'",
      "muscle_action": "'"${MUSCLE}"'",
      "cues": "'"${CUES}"'"
    }
  }'

echo
