#!/bin/sh
#
# this is an empty package so that if you update the old
# bits get removed
#
rm -fr /tmp/c1
mkdir -p /tmp/c1
${THOME}/build/create_pkg TRIBe19-elementary /tmp/c1
rm -fr /tmp/c1
