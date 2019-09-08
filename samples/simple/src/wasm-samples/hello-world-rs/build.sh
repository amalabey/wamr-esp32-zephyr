#!/bin/bash

set -e

cargo rustc --target wasm32-unknown-unknown --release -- -C link-arg="-zstack-size=16"
wasm-gc target/wasm32-unknown-unknown/release/hello_world_rs.wasm
xxd -i target/wasm32-unknown-unknown/release/hello_world_rs.wasm > test_wasm.h