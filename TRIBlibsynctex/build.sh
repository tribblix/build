#!/bin/sh
#
# this is a manual build copied from OI
#
git clone https://github.com/jlaurens/synctex
cd synctex
cp $THOME/build/patches/synctex.pc .
cp $THOME/build/patches/synctex.Makefile Makefile
gmake
$THOME/build/genpkg TRIBlibsynctex
