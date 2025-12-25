#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a few of the programs from the X11R6 contrib tape
#
# https://www.x.org/releases/X11R6/
#
# assumes you've unpacked those 4 contrib tarballs and are in the
# contrib/programs directory
#

$THOME/build/unpack contrib-1
$THOME/build/unpack contrib-2
$THOME/build/unpack contrib-3
$THOME/build/unpack contrib-4
cd contrib/programs

cd xcalendar
xmkmf -a -DHasGcc3=YES
make
cd ..
cd xcolors
xmkmf -a -DHasGcc3=YES
sed -i s:/usr/share/X11:/usr/lib/X11: Makefile
make
cd ..
cd xrubik
xmkmf -a -DHasGcc3=YES
make
cd ..
cd xdiary
xmkmf -a -DHasGcc3=YES
make
cd ..
cd xearth-0.92
xmkmf -a -DHasGcc3=YES
make
cd ..
cd xgas
xmkmf -a -DHasGcc3=YES
make
cd ..
cd AnswerGarden
rm makefile
xmkmf -a -DHasGcc3=YES
sed -i 's:case NULL:case 0:' QA.c
make
cd ..
cd Dclock
xmkmf -DHasGcc3=YES
sed -i s:sun/audioio:sys/audioio: Dclock.c
make
cd ..

${THOME}/build/genpkg -I "install install.man" TRIBx11-contrib xcalendar xcolors xrubik xdiary xearth-0.92 xgas AnswerGarden Dclock
