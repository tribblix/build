#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# use the illumos-xview source and cd to clients/olvwm-4.1
#
make -f Makefile.sunpro CC=gcc OPENWINHOME=/usr MORECCFLAGS="-DOW_I18N_L3 -DSHAPE -DSVR4 -DSYSV"
#
# make install doesn't really do the right thing
#
rm -fr /tmp/olv
mkdir -p /tmp/olv/usr/bin
cp olvwm /tmp/olv/usr/bin
mkdir -p /tmp/olv/usr/share/man/man1
cp olvwm.man /tmp/olv/usr/share/man/man1/olvwm.1
mkdir -p /tmp/olv/usr/share/man/man5
cp olvwmrc.man /tmp/olv/usr/share/man/man5/olvwmrc.5

${THOME}/build/create_pkg TRIBolvwm /tmp/olv
rm -fr /tmp/olv
