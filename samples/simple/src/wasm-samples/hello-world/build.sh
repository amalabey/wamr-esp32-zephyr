# Copyright (C) 2019 Intel Corporation.  All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e

source ~/work/iot/emsdk/emsdk_env.sh

IWASM_ROOT=${PWD}/../../../iwasm
APP_LIBS=${IWASM_ROOT}/lib/app-libs
NATIVE_LIBS=${IWASM_ROOT}/lib/native-interface

emcc -g -O3 main.c -s WASM=1 -s SIDE_MODULE=1 -s ASSERTIONS=1 -s STACK_OVERFLOW_CHECK=2 \
                -I${PWD}/../.. \
                -s TOTAL_MEMORY=65536 -s TOTAL_STACK=4096 -o test.wasm
                
#./jeffdump -o test_wasm.h -n wasm_test_file test.wasm
xxd -i test.wasm > test_wasm.h