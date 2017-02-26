#!/bin/sh
#
# It's a nightly svn export
#
${THOME}/build/unpack mplayer-export-snapshot
cd mplayer-export-2017-02-26
# --disable-ffmpeg_a makes it use the working installed copy of ffmpeg
# instead of downloading and building its own broken one
env PATH=/usr/gnu/bin:$PATH ./configure --prefix=/usr --enable-gui --disable-ffmpeg_a
# gui needs sdl, I think
# wants yasm aka TRIByasm
# Wants a grep that understands -E, hence path
gmake -j 4
# fails on awk
env PATH=/usr/gnu/bin:$PATH gmake -j 4
cd ..
${THOME}/build/genpkg TRIBmplayer mplayer-export-2017-02-26
# Needs a skin
# GUI doesn't actually show properly, although standard playback works fine
