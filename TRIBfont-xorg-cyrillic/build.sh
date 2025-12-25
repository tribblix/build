#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# built in a similar way to TRIBfont-xorg-core
#
# to download
# for xfont in `cat ${THOME}/build/TRIBfont-xorg-cyrillic/filelist`
# do
#    wget $xfont
# done
#
# ** this really is a shell script **
#
for xfont in `cat ${THOME}/build/TRIBfont-xorg-cyrillic/filelist | awk -F/ '{print $NF}' | sed s:.tar.bz2::`
do
    $THOME/build/dobuild $xfont
done


${THOME}/build/genpkg TRIBfont-xorg-cyrillic `cat ${THOME}/build/TRIBfont-xorg-cyrillic/filelist | awk -F/ '{print $NF}' | sed s:.tar.bz2::`
