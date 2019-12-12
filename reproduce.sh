#!/usr/bin/env sh

cd $(dirname "$0")/build
cmake .. -DCMAKE_BUILD_TYPE=Debug
make -j`nproc`
./main