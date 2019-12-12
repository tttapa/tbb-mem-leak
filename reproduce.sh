#!/usr/bin/env sh

set -x

cd $(dirname "$0")/build

cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_FLAGS="-fsanitize=address"
make -j`nproc`
./main

cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_FLAGS=""
make -j`nproc`
valgrind --leak-check=full ./main
