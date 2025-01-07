#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack tkdiff-5-7
cd tkdiff-5-7
rm -fr /tmp/tk1
mkdir -p /tmp/tk1/usr/bin
mkdir -p /tmp/tk1/usr/share/tkdiff
cp tkdiff /tmp/tk1/usr/bin
cp *.txt /tmp/tk1/usr/share/tkdiff
chmod 644 /tmp/tk1/usr/share/tkdiff/*
cd ..
${THOME}/build/create_pkg TRIBtkdiff /tmp/tk1
rm -fr /tmp/tk1
