#!/bin/sh
set -x -e

mkdir build && cd build
cmake \
    -D cppad_prefix=${PREFIX} \
    -D CMAKE_BUILD_TYPE='relase' \
    -D extra_cxx_flags='-Wall -pedantic-errors -Wno-unused-result -std=c++11' \
    ..
make install
