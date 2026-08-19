#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# easiest way to get 64-bit is to set CC
# no-implicit because gcc14 is stricter
#
env CC="gcc -m64 -Wno-implicit" ${THOME}/build/dobuild -64only procmail-3.24 -M LOCKINGTEST=110
#
# see also the fixit script which relocates the install into the right place
#
${THOME}/build/genpkg -D BASENAME TRIBprocmail procmail-3.24
