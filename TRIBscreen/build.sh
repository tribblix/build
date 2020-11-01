#!/bin/sh
#
${THOME}/build/dobuild screen-4.8.0 -C --with-sys-screenrc=/etc/screenrc
${THOME}/build/genpkg TRIBscreen screen-4.8.0
