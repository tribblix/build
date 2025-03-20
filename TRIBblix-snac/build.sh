#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env CC=gcc CFLAGS="-O -m64" LDFLAGS="-lsocket -lnsl" ${THOME}/build/dobuild -64only -n snac2 snac2-2.74
sed -i -e 's:=/usr/local:=/opt/tribblix/snac:' -e 's: $(PREFIX: $(DESTDIR)$(PREFIX:' -e 's:install -:ginstall -:' snac2-2.74-64bit/Makefile
${THOME}/build/genpkg TRIBblix-snac snac2-2.74
