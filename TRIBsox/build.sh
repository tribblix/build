#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-I/usr/include/opus ${THOME}/build/dobuild -64only sox_ng-14.4.5.1 -C "--disable-openmp --with-distro=Tribblix --enable-static=no --enable-replace"
${THOME}/build/genpkg TRIBsox sox_ng-14.4.5.1
