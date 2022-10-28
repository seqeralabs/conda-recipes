#!/bin/bash

export CPPFLAGS="-I$PREFIX/include"

cd source
make STAR CXXFLAGS_SIMD=""
mkdir -p $PREFIX/bin
cp STAR $PREFIX/bin
chmod +x $PREFIX/bin/STAR
