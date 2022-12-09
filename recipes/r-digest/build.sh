#!/bin/bash

export DISABLE_AUTOBREW=1

mkdir -p ~/.R
echo -e "CC=$CC
FC=$FC
CXX=$CXX
CXX98=$CXX
CXX11=$CXX
CXX14=$CXX" > ~/.R/Makevars

# shellcheck disable=SC2086
R CMD INSTALL --build . ${R_ARGS}
