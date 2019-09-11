#!/bin/bash

set -e

asc index.ts -b -O --runtime none  > test.wasm
xxd -i test.wasm > test_wasm.h