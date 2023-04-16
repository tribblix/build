#!/bin/sh
#
# the easiest way to get the tarball is fromn libreoffice, it will be
# external/tarballs/5ade6ae2a99bc1e9e57031ca88d36dad-hyphen-2.8.8.tar.gz
#
${THOME}/build/dobuild -64 hyphen-2.8.8 -C "--disable-static"
${THOME}/build/genpkg TRIBlibhyphen hyphen-2.8.8
