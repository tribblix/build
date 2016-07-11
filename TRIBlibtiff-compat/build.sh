#!/bin/sh
#
# this provides the legacy 3.x files for binary compatibility
#
rm -fr /tmp/lp
mkdir /tmp/lp
${THOME}/build/create_pkg TRIBlibtiff-compat /tmp/lp
rm -fr /tmp/lp
