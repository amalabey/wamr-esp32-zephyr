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

#include <stdio.h>
#include <stdlib.h>
#include "wasm_app.h"

static int timer_count = 0;

void timer_tick(user_timer_t timer)
{
    printf("Hello from timer tick: %d \n", timer_count++);
}

int main(int argc, char **argv)
{
    printf("main: Initialising the timer..!\n");

    char *buf;
    user_timer_t timer;

    timer = api_timer_create(1000, true, false, timer_tick);
    api_timer_restart(timer, 1000);

    printf("mian: Timer started \n");

    /*
    buf = malloc(200);
    if (!buf) {
        printf("malloc buf failed\n");
        return -1;
    }

    printf("buf ptr: %p\n", buf);

    sprintf(buf, "%s", "1234\n");
    printf("buf: %s", buf);

    free(buf);
    */
    return 0;
}
