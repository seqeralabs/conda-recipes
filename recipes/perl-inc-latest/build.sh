#!/bin/bash

set -o errexit -o pipefail

if [[ -f Build.PL ]]; then
    perl Build.PL
    perl ./Build
    perl ./Build test
    perl ./Build install --installdirs vendor
elif [[ -f Makefile.PL ]]; then
    perl Makefile.PL INSTALLDIRS=vendor INSTALL_BASE=vendor
    make
    make install
else
    echo 'Unable to find Build.PL or Makefile.PL. You need to modify build.sh.'
    exit 1
fi
