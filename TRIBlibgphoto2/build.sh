#!/bin/sh
#
# needs libtool installed
#
env CONFIG_SHELL=/bin/bash  ${THOME}/build/dobuild -64 libgphoto2-2.5.27
${THOME}/build/genpkg TRIBlibgphoto2 libgphoto2-2.5.27
