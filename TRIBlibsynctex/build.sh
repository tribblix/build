#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a manual build copied from OI
#
git clone https://github.com/jlaurens/synctex
cd synctex
cp $THOME/build/patches/synctex.pc.`uname -p` synctex.pc
cp $THOME/build/patches/synctex.Makefile.`uname -p` Makefile
gmake
$THOME/build/genpkg TRIBlibsynctex
