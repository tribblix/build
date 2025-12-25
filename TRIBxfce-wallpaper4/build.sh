#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
rm -fr /tmp/ss
mkdir -p /tmp/ss/usr/share/backgrounds/xfce
#
# copy images from the following URLs into that directory
#
# the following are from pixabay
#
# https://pixabay.com/en/alberta-canada-lake-mountains-2297204/
# as alberta-2297204_1920.jpg
# https://pixabay.com/en/bridge-japanese-garden-arch-park-53769/
# as bridge-53769_1920.jpg
# https://pixabay.com/en/bled-slovenia-lake-island-sunrise-2608425/
# as bled-2608425_1920.jpg
# https://pixabay.com/en/iceberg-antarctica-polar-blue-ice-404966/
# as iceberg-404966_1920.jpg
# https://pixabay.com/en/tree-fall-fall-colors-fall-leaves-99852/
# as tree-99852_1920.jpg
# https://pixabay.com/en/waterfall-th%C3%A1c-dray-nur-163579/
# as waterfall-163579.jpg
# https://pixabay.com/en/mt-fuji-volcano-foggy-mountain-477832/
# as mt-fuji-477832_1920.jpg
# https://pixabay.com/en/seljalandsfoss-waterfall-iceland-1751463/
# as seljalandsfoss-1751463_1920.jpg
# https://pixabay.com/en/sunset-sailing-boat-boat-sea-ship-675847/
# as sunset-675847_1920.jpg
# https://pixabay.com/en/fall-autumn-red-season-woods-1072821/
# as fall-1072821_1920.jpg
#
${THOME}/build/create_pkg TRIBxfce-wallpaper4 /tmp/ss
rm -fr /tmp/ss
