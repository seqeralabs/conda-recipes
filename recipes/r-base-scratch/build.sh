#!/bin/bash

./configure --with-x=no                      \
            --prefix=${PREFIX}               \
            --host=${HOST}                   \
            --build=${BUILD}                 \
            --with-jpeg=yes
make

