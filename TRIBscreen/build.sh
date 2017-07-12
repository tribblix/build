#!/bin/sh
#
#
#
env CPPFLAGS="-D_XPG4_2 -D__EXTENSIONS__" ${THOME}/build/dobuild screen-4.6.1 -C --with-sys-screenrc=/etc/screenrc
${THOME}/build/genpkg TRIBscreen screen-4.6.1
