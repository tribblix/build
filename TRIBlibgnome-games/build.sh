#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH $THOME/build/mesonbuild -64only libgnome-games-support-1.8.2
${THOME}/build/genpkg TRIBlibgnome-games libgnome-games-support-1.8.2
