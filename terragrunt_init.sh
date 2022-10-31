#!/bin/sh

set -o pipefail

terragrunt init -no-color 2>&1 | grep "error" || true
