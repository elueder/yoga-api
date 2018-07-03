#!/bin/bash

curl "http://localhost:4741/sequence_poses" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "sequence_pose": {
      "sequence_id": "'"${SEQID}"'",
      "pose_id": "'"${POSEID}"'"
    }
  }'

echo
