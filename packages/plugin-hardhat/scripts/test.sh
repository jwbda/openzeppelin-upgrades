#!/usr/bin/env bash

set -euo pipefail

# rimraf .openzeppelin
rm -rf .openzeppelin
npx hardhat compile
echo ">>> run in test.sh , $(pwd), 111, $@"
./node_modules/.bin/ava "$@"
