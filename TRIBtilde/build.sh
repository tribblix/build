#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a multistage build
#
${THOME}/build/dobuild -64only libtranscript-0.3.3
env TRIBBLIX_CFLAGS=-D_POSIX_PTHREAD_SEMANTICS ${THOME}/build/dobuild -64only libt3config-1.0.0
# pkg
env PKG_CONFIG_PATH=/usr/lib/`${THOME}/build/getarch`/pkgconfig TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`${THOME}/build/getarch` -R/usr/gnu/lib/`${THOME}/build/getarch`" TRIBBLIX_CFLAGS=-I/usr/gnu/include ${THOME}/build/dobuild -64only libt3window-0.4.1
env PKG_CONFIG_PATH=/usr/lib/`${THOME}/build/getarch`/pkgconfig TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`${THOME}/build/getarch` -R/usr/gnu/lib/`${THOME}/build/getarch`" TRIBBLIX_CFLAGS=-I/usr/gnu/include ${THOME}/build/dobuild -64only libt3key-0.2.10
sed -i 's:do install :do ginstall :' libt3key-0.2.10-64bit/Makefile
env PKG_CONFIG_PATH=/usr/lib/`${THOME}/build/getarch`/pkgconfig ${THOME}/build/dobuild -64only libt3highlight-0.5.0
# pkg
env PATH=/usr/bin/`${THOME}/build/getarch`:$PATH PKG_CONFIG_PATH=/usr/lib/`${THOME}/build/getarch`/pkgconfig ${THOME}/build/dobuild -64only libt3widget-1.2.2
# pkg
env PKG_CONFIG_PATH=/usr/lib/`${THOME}/build/getarch`/pkgconfig TRIBBLIX_CXXFLAGS=-D_SYS_MACHTYPES_H ${THOME}/build/dobuild -64only tilde-1.1.3
${THOME}/build/genpkg TRIBtilde libtranscript-0.3.3 libt3config-1.0.0 libt3window-0.4.1 libt3key-0.2.10 libt3highlight-0.5.0 libt3widget-1.2.2 tilde-1.1.3
