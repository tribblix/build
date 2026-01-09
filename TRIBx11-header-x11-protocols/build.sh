#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this was a composite package that merged all the separate proto packages
# now upstream have merged them all into one
#
# There are 10 include files which have no separate source
# all of which come from what OI ship as sun-ext-protos
#

# new merged build
# we want the pc files to end up in /usr/lib/pkgconfig, whereas
# the default here was to put them under /usr/share
$THOME/build/dobuild xorgproto-2025.1 -C --datadir=/usr/lib

$THOME/build/genpkg TRIBx11-header-x11-protocols xorgproto-2025.1
