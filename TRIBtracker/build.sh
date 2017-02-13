#!/bin/sh
#
# (downrev due to sqlite3 - have 3.7.6.3; 0.14.5 => 3.7.0, later => 3.7.9)
# (disable gstreamer cos it uses gstreamer-0.10)
#
# must build without gtk3
#
# it claims to no longer need dbus-glib but that's not quite true
# hence the make -k
#
env LIBS=-luuid ${THOME}/build/dobuild -gnu tracker-0.14.5 -C "--disable-libgif CFLAGS=-D__EXTENSIONS__ --enable-generic-media-extractor=external --disable-introspection" -M -k
${THOME}/build/genpkg TRIBtracker tracker-0.14.5
