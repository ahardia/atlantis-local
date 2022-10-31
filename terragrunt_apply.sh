#!/bin/sh

if [[ $# -ne 1 ]]; then
  echo "I take planfile as an argument"
  exit 1
fi

set -o pipefail

terragrunt apply -no-color $1 2>&1 | grep -v "\[terragrunt]"