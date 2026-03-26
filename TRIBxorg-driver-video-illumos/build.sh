#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to have the matching Xorg server that you're building for installed
#
# the patch enables building against the older Xorg in Tribblix
#
$THOME/build/dobuild -A -64only https://github.com/LuminousMonkey/xf86-video-illumosfb -C --with-xorg-module-dir=/usr/lib/xorg/modules/amd64

${THOME}/build/genpkg TRIBxorg-driver-video-illumos xf86-video-illumosfb

exit 0

#
# this needs the following in /etc/X11/xorg.conf
#
cat > /dev/null <<_EOF
Section "Device"
    Identifier "Card0"
    Driver     "illumosfb"
EndSection

Section "Screen"
    Identifier "Screen0"
    Device     "Card0"
EndSection
_EOF
