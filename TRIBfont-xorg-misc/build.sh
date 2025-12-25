#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# built in a similar way to TRIBfont-xorg-core
#
# to download
# for xfont in `cat ${THOME}/build/TRIBfont-xorg-misc/filelist`
# do
#    wget $xfont
# done
#
# ** this really is a shell script **
#
# override destination so it doesn't stomp on other fonts (otherwise
# there's a conflicting fonts.dir)
#
for xfont in `cat ${THOME}/build/TRIBfont-xorg-misc/filelist | awk -F/ '{print $NF}' | sed s:.tar.bz2::`
do
    $THOME/build/dobuild $xfont -C --with-fontdir=/usr/share/fonts/X11/extra-misc
done


${THOME}/build/genpkg TRIBfont-xorg-misc `cat ${THOME}/build/TRIBfont-xorg-misc/filelist | awk -F/ '{print $NF}' | sed s:.tar.bz2::`
