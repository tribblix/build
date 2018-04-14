#!/bin/sh
#
# needs libtool installed
#
env LD_ALTEXEC=/usr/gnu/bin/ld ${THOME}/build/dobuild libgphoto2-2.5.16
env LD_ALTEXEC=/usr/gnu/bin/ld ${THOME}/build/genpkg TRIBlibgphoto2 libgphoto2-2.5.16
