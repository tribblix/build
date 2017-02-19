#!/bin/sh
#
rm -fr rtmpdump
git clone git://git.ffmpeg.org/rtmpdump
cd rtmpdump
#
# the last tarball release was 2.3
# use the same patch for the git checkout
#
${THOME}/build/patches/rtmpdump-2.3.preconf
gmake -j 4
${THOME}/build/genpkg TRIBrtmpdump
cd ..
rm -fr rtmpdump
