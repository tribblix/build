#!/bin/sh
#

$THOME/build/dobuild -64only libcupsfilters-2.0rc2 -C --disable-dbus
${THOME}/build/genpkg TRIBlibcupsfilters libcupsfilters-2.0rc2
