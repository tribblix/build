#!/bin/sh
#
# (downrev due to sqlite3 - have 3.7.6.3; 0.14.5 => 3.7.0, later => 3.7.9)
# (disable gstreamer cos it uses gstreamer-0.10)
#
env LIBS=-luuid ${THOME}/build/dobuild -gnu tracker-0.14.5 -C "--disable-libgif CFLAGS=-D__EXTENSIONS__ --enable-generic-media-extractor=external"
${THOME}/build/genpkg TRIBtracker tracker-0.14.5
