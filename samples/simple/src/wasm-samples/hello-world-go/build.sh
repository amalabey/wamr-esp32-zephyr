#!/bin/bash

set -e

export GOROOT=/usr/local/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export GOPATH=/home/amal/work/iot/esp32-zephyr/zephyr/samples/simple
export PATH=$PATH:/usr/local/tinygo/bin
tinygo build -o test.wasm -target wasm ./main.go
xxd -i test.wasm > test_wasm.h

