#!/bin/bash
echo "Cleaning up build directory"
rm -rf build
mkdir build && cd build
echo "Generating cmake configuration"
cmake -GNinja -DBOARD=esp32 ..
echo "building the source"
ninja
cd ..
echo "Done.."
#cp build/zephyr/zephyr.bin ~/work/iot/esp32-pio-basic/.pio/build/m5stick-c/firmware.bin
#cp build/zephyr/zephyr.elf ~/work/iot/esp32-pio-basic/.pio/build/m5stick-c/firmware.elf
