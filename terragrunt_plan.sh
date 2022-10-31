#!/bin/sh

if [[ $# -ne 1 ]]; then
  echo "I take planfile as an argument"
  exit 1
fi

plan_output=$(terragrunt plan -no-color -out="$1" 2>&1)
ret_val=$?

if [[ $ret_val -eq 0 ]]; then
  echo "$plan_output" | grep -v "\[terragrunt]"
else
  echo "$plan_output"
fi
exit $ret_val
