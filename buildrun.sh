#!/bin/bash

if [ ! -d "build" ]; then
  mkdir build
fi
cd build

cmake ..
if [ $? -eq 0 ]; then
    make
    if [ $? -eq 0 ]; then
        sudo openocd -f interface/cmsis-dap.cfg -f target/rp2040.cfg -c "adapter speed 5000" -c "program pico_project.elf verify reset exit"
        if [ $? -eq 0 ]; then
            minicom -b 115200 -o -D /dev/ttyACM0
        fi
    fi
fi

cd ../