#!/bin/bash

mkdir -p "$PREFIX/bin"
export BINDIR=$(pwd)/bin
mkdir -p "$BINDIR"

export L="${LDFLAGS}"

(cd kent/src/lib && make)
(cd kent/src/htslib && make)
(cd kent/src/jkOwnLib && make)
(cd kent/src/hg/lib && make)

#cp $PREFIX/lib/libz.so.1 $PREFIX/lib/libz.so

(cd kent/src/utils/bedGraphToBigWig && make)

# set -eu -o pipefail
# 
# mkdir -p $PREFIX/bin
# mkdir -p $PREFIX/lib
# 
# mkdir -p build
# cd build
# cmake -DCMAKE_BUILD_TYPE=RELEASE \
#       -DCONDA_BUILD=TRUE \
#       -DBoost_NO_BOOST_CMAKE=ON \
#       -DCMAKE_OSX_DEPLOYMENT_TARGET=10.11 \
#       -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX \
#       -DBoost_NO_SYSTEM_PATHS=ON \
#       -DNO_IPO=TRUE \
#       ..
# make VERBOSE=1
# echo "unit test executable"
# ./src/unitTests
# echo "installing"
# make install CFLAGS="-L${PREFIX}/lib -I${PREFIX}/include"
# ../tests/unitTests
# echo "cmake-powered unit test"
# CTEST_OUTPUT_ON_FAILURE=1 make test
#./userApps/kent/src/utils/bedGraphToBigWig
#./userApps/kent/src/utils/bedGraphToBigWig/bedGraphToBigWig.c
