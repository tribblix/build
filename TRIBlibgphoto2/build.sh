#!/bin/sh
#
# needs libtool installed
#
# 64-bit only, like the only consumer which is gphoto2
#
env CONFIG_SHELL=/bin/bash  ${THOME}/build/dobuild +64 libgphoto2-2.5.31
${THOME}/build/genpkg TRIBlibgphoto2 libgphoto2-2.5.31
