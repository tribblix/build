#!/bin/sh
#
rm -fr /tmp/snaggle /tmp/pct/TRIBrelease-name*
mkdir -p /tmp/snaggle
${THOME}/build/create_pkg TRIBrelease-name /tmp/snaggle
