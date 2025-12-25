#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
rm -fr /tmp/ss
mkdir -p /tmp/ss/usr/share/backgrounds/xfce
#
# copy images from the following URLs into that directory
#
# the following are from unsplash
#
# https://unsplash.com/photos/aDFJ5Fm50IA
# as unsplash-oia.jpg
# https://unsplash.com/photos/-9Ap357MJ8s
# as unsplash-hungarian-parliament.jpg
# https://unsplash.com/photos/A5rCN8626Ck
# as unsplash-arches-national-park.jpg
# https://unsplash.com/photos/CYvbt621yLE
# as unsplash-rock.jpg
# https://unsplash.com/photos/VowIFDxogG4
# as unsplash-lake.jpg
# https://unsplash.com/photos/n5QKVFf6ufo
# as unsplash-snowdonia.jpg
# https://unsplash.com/photos/QLux_5sY-5I
# as unsplash-skyline.jpg
# https://unsplash.com/photos/t7YycgAoVSw
# as unsplash-ballons.jpg
#
${THOME}/build/create_pkg TRIBxfce-wallpaper5 /tmp/ss
rm -fr /tmp/ss
