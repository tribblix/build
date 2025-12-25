#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a collection of extra themes for Xfce
#
rm -fr /tmp/xth
mkdir -p /tmp/xth/usr/share/themes
cd /tmp/xth/usr/share/themes
#
# PRO-Dark https://www.xfce-look.org/p/1207818/
#
${THOME}/build/unpack PRO-dark-XFCE-4.14
mv PRO-dark-XFCE-4.14/READ\ ME PRO-dark-XFCE-4.14/README
mv PRO-dark-XFCE-4.14/gtk-2.0/READ\ ME PRO-dark-XFCE-4.14/gtk-2.0/README
rm -f PRO-dark-XFCE-4.14/gtk-2.0/apps\ \(copy\ 1\).rc
rm -f PRO-dark-XFCE-4.14/gtk-2.0/assets/entry-border-bg\ \(copy\ 1\).png
rm -f PRO-dark-XFCE-4.14/gtk-2.0/menubar-toolbar/entry-toolbar\ \(copy\ 1\).png
mv PRO-dark-XFCE-4.14 PRO-dark
#
# Prof https://www.xfce-look.org/p/1334420/
#
# rename the tarball here from "Prof--XFCE- 2.1.tar.gz" to Prof-XFCE-2.1.tar.gz
${THOME}/build/unpack Prof-XFCE-2.1
mv Prof--XFCE-\ 2.1 Prof
${THOME}/build/unpack Prof-XFCE-2.1-Light-Panel
mv Prof-XFCE-2.1-Light-Panel Prof-Light
#
# Pop https://www.xfce-look.org/p/1299758/
#
$THOME/build/unpack Pop-Xfwm
rm *
mv Pop-Xfwm Pop
mv Pop-Xfwm-altmenu Pop-altmenu
mv Pop-Xfwm-nomenu Pop-nomenu
mv Pop-light-Xfwm Pop-light
mv Pop-light-Xfwm-altmenu Pop-light-altmenu
mv Pop-light-Xfwm-nomenu Pop-light-nomenu

#
${THOME}/build/create_pkg TRIBxfce-extra-themes /tmp/xth
cd
rm -fr /tmp/xth
