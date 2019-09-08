/*
 * Copyright (C) 2019 Intel Corporation.  All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "ext_lib_export_dec.h"
#include "lib_export.h"
#include <sys/printk.h>
#include <zephyr.h>

void print_test(int num)
{
    printk("Hello from exported print_test: %d \n", num);
}

void thread_sleep(int millis)
{
    k_sleep(millis);
}


static NativeSymbol extended_native_symbol_defs[] = {
    EXPORT_WASM_API(print_test),
    EXPORT_WASM_API(thread_sleep)
};

#include "ext_lib_export.h"
