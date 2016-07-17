#!/bin/sh
#
rm -fr /tmp/snaggle
mkdir -p /tmp/snaggle
${THOME}/build/create_pkg TRIBrelease-name /tmp/snaggle
