#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we need -m64 in CFLAGS here because it's passed through to the
# build of the private copy of readline
#
env CFLAGS="-m64 -I/usr/gnu/include" LDFLAGS="-L/usr/gnu/lib/`isainfo -k` -R/usr/gnu/lib/`isainfo -k`" ${THOME}/build/pkg_setup_py TRIBgnureadline-python-311 gnureadline-8.2.10
