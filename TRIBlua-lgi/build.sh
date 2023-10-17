#!/bin/sh
#
env CC=gcc ${THOME}/build/dobuild lgi-0.9.2
mv lgi-0.9.2 lgi-0.9.2-32bit
env CC="gcc -m64" PKG_CONFIG_PATH=/usr/lib/`${THOME}/build/getarch`/pkgconfig ${THOME}/build/dobuild +64 lgi-0.9.2
mv lgi-0.9.2-32bit lgi-0.9.2
${THOME}/build/genpkg TRIBlua-lgi lgi-0.9.2
