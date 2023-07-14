#!/bin/bash

set -o errexit -o pipefail

if [[ -f Makefile.PL ]]; then
    perl Makefile.PL
    make
    make test
    make install
else
    echo 'Unable to find Makefile.PL. You need to modify build.sh.'
    exit 1
fi
