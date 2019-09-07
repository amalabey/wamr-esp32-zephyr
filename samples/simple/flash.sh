#!/bin/bash
echo "regenerating .bin image from .elf"
rm build/zephyr/zephyr.bin
esptool.py --chip esp32 elf2image build/zephyr/zephyr.elf
echo "Attempting to flash /dev/ttyUSB0"
esptool.py --chip esp32 --port /dev/ttyUSB0 --baud 1500000 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect 0x1000 bootloader/bootloader_dio_40m.bin 0x8000 bootloader/partitions.bin 0xe000 bootloader/boot_app0.bin 0x10000 build/zephyr/zephyr.bin
echo "Done.."
