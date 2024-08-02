#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# The value of info.source_url in the OI package gives us the list
# of source files, which is in filelist
#
# The way OI appear to ship these is to take those fonts and split out all
# the ISO8859 fonts into separate packages
# OI also put those fonts into separate directories
# The current build also packages gzipped versions of the fonts
#
# Historically Tribblix only shipped the separate iso8859-1 package and none
# of the other iso8859-xx packages [where xx = 2 to 16]
#
# We also have an empty TRIBfont-xorg-iso8859-1 package so that updates
# do the right thing
#
# to download
# for xfont in `cat ${THOME}/build/TRIBfont-xorg-core/filelist`
# do
#    wget $xfont
# done
#
# ** this really is a shell script **
#
for xfont in `cat ${THOME}/build/TRIBfont-xorg-core/filelist | awk -F/ '{print $NF}' | sed s:.tar.bz2::`
do
    $THOME/build/dobuild $xfont
done


${THOME}/build/genpkg TRIBfont-xorg-core `cat ${THOME}/build/TRIBfont-xorg-core/filelist | awk -F/ '{print $NF}' | sed s:.tar.bz2::`
