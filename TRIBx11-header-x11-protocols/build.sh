#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a composite package
#
# we version it as 1.0.x to reflect that its is an arbitrary
# sequence rather than a real version number
#
# Q? presentproto dri3proto dmxproto xorgproto trapproto
# OI have presentproto and dmxproto
# OI have dri3proto as well as dri2proto
# OI don't have xorgproto or trapproto
#
# Q? are versions correct, what do the versions match?
# other than version number bumps the .pc files haven't changed
# although the include files are quite different
#
# There are 10 include files which have no separate source
# all of which come from what OI ship as sun-ext-protos
#

#
# create a new empty directory and run this there, as the final
# packaging step uses a wildcard
#

# KEEP: old 7.0.18 current 7.0.31 use 7.0.31
$THOME/build/dobuild xproto-7.0.31
# KEEP: old 1.0.5 current 1.0.7 use 1.0.7
$THOME/build/dobuild kbproto-1.0.7
# GOOD: old 1.0.3 current 1.0.3
$THOME/build/dobuild xproxymanagementprotocol-1.0.3
# KEEP: old 1.2 current 1.2.1 use 1.2.1
$THOME/build/dobuild xineramaproto-1.2.1
# KEEP: old 2.3 current 2.3.1 use 2.3.1
$THOME/build/dobuild xf86vidmodeproto-2.3.1
# GOOD: old 0.9.3 current 0.9.3
$THOME/build/dobuild xf86miscproto-0.9.3
# KEEP: old 2.1.0 current 2.1.1 use 2.1.1
$THOME/build/dobuild xf86driproto-2.1.1
# GOOD: old 2.1 current 2.1
$THOME/build/dobuild xf86dgaproto-2.1
# GOOD: old 1.2.0 current 1.2.0
$THOME/build/dobuild xf86bigfontproto-1.2.0
# DOWNREV: old 7.1.2 current 7.3.0 update to 7.3.0
$THOME/build/dobuild xextproto-7.3.0 -C --with-xmlto=no
# KEEP: old 1.2.0 current 1.2.2 use 1.2.2
$THOME/build/dobuild xcmiscproto-1.2.2
# HEEP: old 2.3.1 current 2.3.3 use 2.3.3
$THOME/build/dobuild videoproto-2.3.3
# KEEP: old 1.2.0 current 1.2.2 use 1.2.2
$THOME/build/dobuild scrnsaverproto-1.2.2
# GOOD: old 1.1.0 current 1.2.0 use 1.2.0
$THOME/build/dobuild resourceproto-1.2.0
# GOOD: old 0.11.1 current 0.11.1
$THOME/build/dobuild renderproto-0.11.1
# KEEP: old 1.14 current 1.14.2 use 1.14.2
$THOME/build/dobuild recordproto-1.14.2
# DOWNREV: old 1.3.1 was 1.3.2 bump to 1.5.0
$THOME/build/dobuild randrproto-1.5.0
# KEEP: old 1.0.4 current 1.0.5 use 1.0.5
$THOME/build/dobuild printproto-1.0.5
# DOWNREV: old 2.0 current 2.3.2 bump to 2.3.2
$THOME/build/dobuild inputproto-2.3.2
# CURRENT:
$THOME/build/dobuild glproto-1.4.17
# CURRENT:
$THOME/build/dobuild fontsproto-2.1.3
# GOOD: old 0.1.3 current 0.1.3
$THOME/build/dobuild fontcacheproto-0.1.3
# DOWNREV: old 4.1.1 bump to 5.0
$THOME/build/dobuild fixesproto-5.0
# KEEP: old 1.1.0 current 1.1.1 use 1.1.1
$THOME/build/dobuild evieext-1.1.1
# CURRENT:
$THOME/build/dobuild dri2proto-2.8
# KEEP: old 1.2.0 current 1.2.1
$THOME/build/dobuild damageproto-1.2.1
# KEEP: old 0.4.1 current 0.4.2 use 0.4.2
$THOME/build/dobuild compositeproto-0.4.2
# KEEP: old 1.1.0 current 1.1.2 use 1.1.2
$THOME/build/dobuild bigreqsproto-1.1.2

#
# this assumes we're building in an initially empty directory
#

$THOME/build/genpkg TRIBx11-header-x11-protocols *
