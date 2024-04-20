#!/bin/sh
#
$THOME/build/mesonbuild +gnu -64only libgnome-games-support-1.8.2
${THOME}/build/genpkg TRIBlibgnome-games libgnome-games-support-1.8.2
