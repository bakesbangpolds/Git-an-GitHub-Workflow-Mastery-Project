#!/usr/bin/env bash
# simple-interest.sh - Calculate simple interest

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <principal> <rate_percent> <years>"
  exit 1
fi

principal=$1
rate=$2
years=$3

# Calculate interest: principal * rate% * years
interest=$(awk -v p="$principal" -v r="$rate" -v y="$years" 'BEGIN { printf "%.2f", p * (r/100) * y }')

echo "Simple interest for principal $principal at $rate% over $years years is: $interest"
