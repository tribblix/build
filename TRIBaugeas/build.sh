#!/bin/sh
#
env CPPFLAGS=-I/usr/gnu/include TRIBBLIX_LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" ${THOME}/build/dobuild augeas-1.10.1
${THOME}/build/genpkg TRIBaugeas augeas-1.10.1
