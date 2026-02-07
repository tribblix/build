#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we need -m64 in CFLAGS here because it's passed through to the
# build of the private copy of readline
#
env CFLAGS="-m64 -I/usr/gnu/include" LDFLAGS="-L/usr/gnu/lib/`isainfo -k` -R/usr/gnu/lib/`isainfo -k`" ${THOME}/build/pkg_pep518 -N TRIBgnureadline-python-312 gnureadline-8.3.3
