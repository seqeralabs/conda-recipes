#!/bin/bash

export CPPFLAGS="-O3"

cd source
make STAR CXXFLAGS_SIMD="-mcpu=neoverse-n1"
mkdir -p $PREFIX/bin
cp STAR $PREFIX/bin
chmod +x $PREFIX/bin/STAR
