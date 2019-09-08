#!/bin/bash
source ../../zephyr-env.sh
export ZEPHYR_TOOLCHAIN_VARIANT="espressif"
export ESPRESSIF_TOOLCHAIN_PATH="$HOME/esp/xtensa-esp32-elf/"
export ZEPHYR_SDK_INSTALL_DIR="$HOME/zephyr-sdk-0.10.3"
export ESP_IDF_PATH="$HOME/zephyr-sdk-0.10.3/xtensa-zephyr-elf"
export ZEPHYR_SDK_INSTALL_DIR="$HOME/zephyr-sdk-0.10.3/"
export PATH="$HOME/zephyr-sdk-0.10.3/xtensa-zephyr-elf/bin:$PATH"
