#!/bin/sh
#
${THOME}/build/unpack amaya-sources-11.4.4
cd Amaya11.4.4
mkdir Amaya/tribblix
cd Amaya/tribblix
../configure --prefix=/usr/versions/Amaya11.4.4
#  Huh? Wants motif. It's broken; on linux it enables gtk, but it thinks
#Solaris is FreeBSD and doesn't bother. So hack configure where it
#checks for AMAYAOS
#  HUh? Complains libpng is too old. But it uses the internal one anayway.
gmake all
#  comment out the 'typedef           long   intptr_t;' in
#  ../thotlib/include/thot_sys.h because it's borked.
mkdir -p /tmp/ama/usr/versions/Amaya11.4.4/Amaya
gmake install DESTDIR=/tmp/ama
${THOME}/build/create_pkg TRIBv-amaya-1144 /tmp/ama
#
# if run remotely you get:
#FATAL ERROR : Your OpenGL implementation does not support needed features!
#* Amaya: Irrecoverable error ***Segmentation fault (core dumped)
#
#Does work locally on the console, though.
