#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# The image files come from
# http://petertribble.co.uk/Fun/wallpaper2.html
# the Tribblix package uses the 1600x1200 images (without the 1600_ prefix)
#
rm -fr /tmp/wp
mkdir -p /tmp/wp/usr/share/backgrounds/xfce
cd /tmp/wp/usr/share/backgrounds/xfce

wget -o mbird1.jpg http://petertribble.co.uk/Fun/1600_mbird1.jpg
wget -o mcliff.jpg http://petertribble.co.uk/Fun/1600_mcliff.jpg
wget -o mliners.jpg http://petertribble.co.uk/Fun/1600_mliners.jpg
wget -o mosaic.jpg http://petertribble.co.uk/Fun/1600_mosaic.jpg
wget -o mplane.jpg http://petertribble.co.uk/Fun/1600_mplane.jpg
wget -o mradar.jpg http://petertribble.co.uk/Fun/1600_mradar.jpg
wget -o naples.jpg http://petertribble.co.uk/Fun/1600_naples.jpg
wget -o nunsvalley.jpg http://petertribble.co.uk/Fun/1600_nunsvalley.jpg
wget -o phot.jpg http://petertribble.co.uk/Fun/1600_phot.jpg
wget -o reykjavik.jpg http://petertribble.co.uk/Fun/1600_reykjavik.jpg

mkdir -p /tmp/wp/usr/share/mate-background-properties
cp ${THOME}/build/patches/tribblix-2.xml /tmp/wp/usr/share/mate-background-properties
${THOME}/build/create_pkg TRIBxfce-wallpaper2 /tmp/wp
cd
rm -fr /tmp/wp
