#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
rm -fr /tmp/ss
mkdir -p /tmp/ss/usr/share/backgrounds/xfce
#
# copy images from the following URLs into that directory
#
# https://www.pexels.com/photo/daylight-forest-glossy-lake-443446/
# as pexels-photo-443446.jpeg
# https://www.pexels.com/photo/green-pine-trees-near-body-of-water-1064162/
# as pexels-photo-1064162.jpeg
# https://www.pexels.com/photo/cottages-in-the-middle-of-beach-753626/
# as pexels-photo-753626.jpeg
# https://www.pexels.com/photo/timelapse-photography-of-falls-near-trees-707915/
# as pexels-photo-707915.jpeg
# https://www.pexels.com/photo/brown-wooden-house-near-mountain-1064144/
# as pexels-photo-1064144.jpeg
# https://www.pexels.com/photo/lake-1110656/
# as pexels-photo-1110656.jpeg
# https://www.pexels.com/photo/high-angle-view-of-cityscape-against-cloudy-sky-313782/
# as pexels-photo-313782.jpeg
# https://www.pexels.com/photo/conifer-daylight-environment-evergreen-454880/
# as pexels-photo-454880.jpeg
# https://www.pexels.com/photo/body-of-water-surrounded-by-trees-1200861/
# as pexels-photo-1200861.jpeg
# https://www.pexels.com/photo/photography-of-bridge-during-nighttime-1239162/
# as pexels-photo-1239162.jpeg
#
${THOME}/build/create_pkg TRIBxfce-wallpaper3 /tmp/ss
rm -fr /tmp/ss
