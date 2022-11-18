#!/bin/bash

export DISABLE_AUTOBREW=1

#echo 'CXX = g++'                     >  src/Makevars
#echo 'CXX11 = g++'                   >> src/Makevars
#echo 'CXX11FLAGS = -O2 -g $(LTO)'    >> src/Makevars
#echo 'CXX11PICFLAGS = -fPIC'         >> src/Makevars
#echo 'CXX11STD = -std=c++11'         >> src/Makevars
echo 'CXX_STD = CXX'         > src/Makevars
sed -i "s/1f06212fc4eccfc3c1eb9a2738b5926b/$(md5sum src/Makevars | awk '{print $1}')/g" MD5

# shellcheck disable=SC2086
R CMD INSTALL --build . ${R_ARGS}
