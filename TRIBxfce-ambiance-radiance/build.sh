#!/bin/sh
#
rm -fr /tmp/th
mkdir -p /tmp/th/usr/share/themes
cd /tmp/th/usr/share/themes
${THOME}/build/unpack Ambiance-Radiance-14.04.3
rm README.txt
rm -fr *CinnaMATE
mv Ambiance-XFCE-LXDE Ambiance
mv Radiance-XFCE-LXDE Radiance
cd
${THOME}/build/create_pkg TRIBxfce-ambiance-radiance /tmp/th
