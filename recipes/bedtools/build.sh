#!/bin/sh
export CPLUS_INCLUDE_PATH=${PREFIX}/include
export C_INCLUDE_PATH=${PREFIX}/include

make install prefix=$PREFIX CXX=$CXX CC=$CC LDFLAGS="-L$PREFIX/lib" CXXFLAGS="-O3 -mcpu=neoverse-n1"
