#!/bin/bash

rm -rf build
mkdir build && cd build
cmake -GNinja -DBOARD=esp32 ..
ninja
cd ..

cp build/zephyr/zephyr.bin ~/work/iot/esp32-pio-basic/.pio/build/m5stick-c/firmware.bin
cp build/zephyr/zephyr.elf ~/work/iot/esp32-pio-basic/.pio/build/m5stick-c/firmware.elf
