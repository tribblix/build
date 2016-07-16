#!/bin/sh
#
# to create the openssl compat package, just run it on a system
# with the old libraries installed, it just copies them
#
rm -fr /tmp/csl
mkdir /tmp/csl
${THOME}/build/create_pkg TRIBopenssl-compat /tmp/csl /tmp/pct
rm -fr /tmp/csl
