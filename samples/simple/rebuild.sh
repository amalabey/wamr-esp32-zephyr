#!/bin/bash
set -e

echo "Cleaning up build directory"
rm -rf build
mkdir build && cd build
echo "Generating cmake configuration"
cmake -GNinja -DBOARD=esp32 ..
echo "building the source"
ninja
cd ..
echo "Done.."
