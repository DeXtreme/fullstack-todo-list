#!/bin/bash

# Check Frontend
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" --max-time "5" "http://localhost")

if [[ "$HTTP_STATUS" -eq 200 ]]; then
  echo -e "Frontend status: \033[0;32mUP\033[0m"
else
  echo -e "Frontend status: \033[0;31mDOWN (HTTP Status: $HTTP_STATUS)\033[0m"
fi

# Check Backend
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" --max-time "5" "http://localhost:4000")

if [[ "$HTTP_STATUS" -eq 200 ]]; then
  echo -e "Backend status: \033[0;32mUP\033[0m"
else
  echo -e "Backend status: \033[0;31mDOWN (HTTP Status: $HTTP_STATUS)\033[0m"
fi