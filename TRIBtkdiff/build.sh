#!/bin/sh
#
${THOME}/build/unpack tkdiff-4.2
cd tkdiff-unix
mkdir -p /tmp/tk1/usr/bin
mkdir -p /tmp/tk1/usr/share/tkdiff
cp tkdiff /tmp/tk1/usr/bin
cp *.txt /tmp/tk1/usr/share/tkdiff
chmod 644 /tmp/tk1/usr/share/tkdiff/*
${THOME}/build/create_pkg TRIBtkdiff /tmp/tk1
