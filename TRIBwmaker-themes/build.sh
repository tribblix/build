#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# some of the wmaker theme backgrounds are added to xfce as well
#
rm -fr /tmp/pth
mkdir -p /tmp/pth/usr/share/WindowMaker/Themes
mkdir -p /tmp/pth/usr/share/backgrounds/xfce
cd /tmp/pth/usr/share/WindowMaker/Themes
git clone https://github.com/ptribble/tribblix-wmaker-themes .
rm -fr .git README.md
cd /tmp/pth/usr/share/backgrounds/xfce
ln -s ../../WindowMaker/Themes/OpenSolaris.themed/stream.jpg wmaker-osol.jpg
ln -s ../../WindowMaker/Themes/Niagara.themed/niagara_us.jpg wmaker-niagara.jpg
ln -s ../../WindowMaker/Themes/RayStone.themed/hallway.jpg wmaker-raystone.jpg
cd
${THOME}/build/create_pkg TRIBwmaker-themes /tmp/pth
rm -fr /tmp/pth
