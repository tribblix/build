#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# it's not a normal configure
#
${THOME}/build/unpack lowdown-1.3.2
cd lowdown-1.3.2
env CFLAGS=-m64 CC=gcc INSTALL=ginstall ./configure PREFIX=/usr LDFLAGS=-m64
gmake -j 4
sed -i s:install:ginstall: Makefile.configure
cd ..
${THOME}/build/genpkg TRIBlowdown lowdown-1.3.2
