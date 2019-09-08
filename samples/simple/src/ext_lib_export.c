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

#include "lib_export.h"
#include "wasm_app.h"

static NativeSymbol extended_native_symbol_defs[] = {
    EXPORT_WASM_API(wasm_create_timer),
    EXPORT_WASM_API(wasm_timer_set_interval),
    EXPORT_WASM_API(wasm_timer_cancel),
    EXPORT_WASM_API(wasm_timer_restart)
};

#include "ext_lib_export.h"
