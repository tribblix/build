#!/bin/sh
#
# https://github.com/joyent/mdata-client/archive/release-20190228.tar.gz
#
${THOME}/build/unpack release-20190228
cd mdata-client-release-20190228
gmake
cd ..
${THOME}/build/genpkg TRIBmdata-client mdata-client-release-20190228
