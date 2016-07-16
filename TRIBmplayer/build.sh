#!/bin/sh
#
# It's a nightly svn export
#
${THOME}/build/unpack mplayer-export-snapshot
cd mplayer-export-2015-06-01
env PATH=/usr/gnu/bin:$PATH ./configure --prefix=/usr --enable-gui
# gui needs sdl, I think
# First thing it does is check out a copy of ffmpeg...
# wants yasm aka TRIByasm
# Wants a grep that understands -E, hence path
gmake -j 4
# fails on awk
env PATH=/usr/gnu/bin:$PATH gmake -j 4
cd ..
${THOME}/build/genpkg TRIBmplayer mplayer-export-2015-06-01
# Needs a skin
# GUI doesn't actually show properly, although standard playback works fine
