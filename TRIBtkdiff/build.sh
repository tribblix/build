#!/bin/sh
#
${THOME}/build/unpack tkdiff-5.6
cd tkdiff-5-6
mkdir -p /tmp/tk1/usr/bin
mkdir -p /tmp/tk1/usr/share/tkdiff
cp tkdiff /tmp/tk1/usr/bin
cp *.txt /tmp/tk1/usr/share/tkdiff
chmod 644 /tmp/tk1/usr/share/tkdiff/*
${THOME}/build/create_pkg TRIBtkdiff /tmp/tk1
