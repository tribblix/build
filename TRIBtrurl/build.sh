#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env CC="gcc -m64" ${THOME}/build/dobuild -64only trurl-0.16.1 -M PREFIX=/usr
${THOME}/build/genpkg -M PREFIX=/usr TRIBtrurl trurl-0.16.1
