#!/bin/sh
#
# some of the wmaker theme backgrounds are added to xfce as well
#
mkdir -p /tmp/pth/usr/share/WindowMaker/Themes
mkdir -p /tmp/pth/usr/share/backgrounds/xfce
cd /tmp/pth/usr/share/WindowMaker/Themes
${THOME}/build/unpack osol-wmaker-theme
${THOME}/build/unpack niagara-wmaker-theme
${THOME}/build/unpack raystone-wmaker-theme
cd /tmp/pth/usr/share/backgrounds/xfce
ln -s ../../WindowMaker/Themes/OpenSolaris.themed/stream.jpg wmaker-osol.jpg
ln -s ../../WindowMaker/Themes/Niagara.themed/niagara_us.jpg wmaker-niagara.jpg
ln -s ../../WindowMaker/Themes/RayStone.themed/hallway.jpg wmaker-raystone.jpg
cd
${THOME}/build/create_pkg TRIBwmaker-themes /tmp/pth
