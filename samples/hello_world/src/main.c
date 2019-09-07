/*
 * Copyright (c) 2012-2014 Wind River Systems, Inc.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <zephyr.h>
#include <sys/printk.h>
#include <stdio.h>

void main(void)
{
	printk("Hello World! %s\n", CONFIG_BOARD);
    printf("hello from printf %s\n", CONFIG_BOARD);

	while(1) {
        printk("hello world in a loop ! count %s \r\n", CONFIG_BOARD);
        printf("hello world in a loop from printf ! count %s \r\n", CONFIG_BOARD);

        k_sleep(1000);
    };
}
