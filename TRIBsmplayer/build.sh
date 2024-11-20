#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a front-end to MPlayer, hence the dependency on TRIBmplayer
# 23.12.0 builds but hangs on startup
#
$THOME/build/unpack smplayer-22.2.0
$THOME/build/unpack smplayer-skins-20.11.0
$THOME/build/unpack smplayer-themes-20.11.0
cd smplayer-skins-20.11.0
sed -i 's:install :ginstall :' Makefile
env PATH=/usr/versions/Qt-5/bin/`${THOME}/build/getarch`:$PATH gmake PREFIX=/usr CC=gcc
cd ..
cd smplayer-themes-20.11.0
sed -i 's:install :ginstall :' Makefile
env PATH=/usr/versions/Qt-5/bin/`${THOME}/build/getarch`:$PATH gmake PREFIX=/usr CC=gcc
cd ..
cd smplayer-22.2.0
sed -i 's: make: gmake:' Makefile
sed -i 's:install :ginstall :' Makefile
sed -i 's:install :ginstall :' install_appdata.sh
sed -i 's:tar :gtar :g' Makefile
sed -i 's:-pthread:-lnsl -lsocket -m64:' webserver/Makefile
sed -i 's:Another OS:Tribblix:' src/smplayer.cpp
env PATH=/usr/versions/Qt-5/bin/`${THOME}/build/getarch`:$PATH gmake -j 6 PREFIX=/usr CC=gcc
cd ..
${THOME}/build/genpkg -M PREFIX=/usr TRIBsmplayer smplayer-22.2.0 smplayer-skins-20.11.0 smplayer-themes-20.11.0
