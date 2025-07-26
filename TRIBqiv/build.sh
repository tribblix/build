#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env CC="gcc -m64" ${THOME}/build/dobuild -64only qiv-3.0.1
cd qiv-3.0.1-64bit
rm -fr /tmp/iq
gmake install PREFIX=/tmp/iq/usr INSTALL=ginstall
${THOME}/build/create_pkg TRIBqiv /tmp/iq
rm -fr /tmp/iq
cd ..
