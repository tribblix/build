#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# The image files come from
# http://petertribble.co.uk/Fun/wallpaper1.html
# the Tribblix package uses the 1600x1200 images (without the 1600_ prefix)
#
rm -fr /tmp/wp
mkdir -p /tmp/wp/usr/share/backgrounds/xfce
cd /tmp/wp/usr/share/backgrounds/xfce

wget -o bodiam1.jpg http://petertribble.co.uk/Fun/1600_bodiam1.jpg
wget -o everest-ride.jpg http://petertribble.co.uk/Fun/1600_everest-ride.jpg
wget -o fishtank.jpg http://petertribble.co.uk/Fun/1600_fishtank.jpg
wget -o goddess-engine.jpg http://petertribble.co.uk/Fun/1600_goddess-engine.jpg
wget -o gozowindow.jpg http://petertribble.co.uk/Fun/1600_gozowindow.jpg
wget -o lille-wheel.jpg http://petertribble.co.uk/Fun/1600_lille-wheel.jpg
wget -o rapide.jpg http://petertribble.co.uk/Fun/1600_rapide.jpg
wget -o signal-box.jpg http://petertribble.co.uk/Fun/1600_signal-box.jpg
wget -o tree-of-life.jpg http://petertribble.co.uk/Fun/1600_tree-of-life.jpg
wget -o wcastle1.jpg http://petertribble.co.uk/Fun/1600_wcastle1.jpg
wget -o wcastle2.jpg http://petertribble.co.uk/Fun/1600_wcastle2.jpg

mkdir -p /tmp/wp/usr/share/mate-background-properties
cp ${THOME}/build/patches/tribblix-1.xml /tmp/wp/usr/share/mate-background-properties
${THOME}/build/create_pkg TRIBxfce-wallpaper1 /tmp/wp
cd
rm -fr /tmp/wp
