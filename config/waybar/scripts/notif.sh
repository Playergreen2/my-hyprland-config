#!/bin/bash

count=$(swaync-client -l | jq '.data | length')

if [ "$count" -gt 0 ]; then
  echo "🔔 $count"
else
  echo "🔕"
fi
