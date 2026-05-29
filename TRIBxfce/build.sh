#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# I build a single merged package
# as some of the components require prior ones installed,
# the first build will be a multistage process
# where you build the package from the components you have so far
# and then install that incomplete package
# the points at which this is required are noted below 'package step'
#
# it's then best to rebuild the whole lot in one pass
#
# build in a zone; eg
# zap create-zone -z xfce -t whole -i 192.168.0.214 \
# -o xfce -o develop -U ptribble -S /export/packages
#
# 4.18 is gtk3-only
#

#
# NOTE: at each package step, you must rebuild everything, otherwise
# it gets confused because the installed version is newer and breaks
# the install step
#

$THOME/build/dobuild -64only -gnu xfce4-dev-tools-4.18.1
$THOME/build/dobuild -64only -gnu libxfce4util-4.18.2 -C "--disable-debug"

# package step
$THOME/build/dobuild -64only -gnu tumbler-4.18.2 -C "--disable-debug"
$THOME/build/dobuild -64only -gnu xfconf-4.18.3 -C "--disable-debug"

# package step
$THOME/build/dobuild -64only -gnu libxfce4ui-4.18.6 -C "--disable-debug --with-vendor-info=Tribblix"

# package step
$THOME/build/dobuild -64only -gnu garcon-4.18.2 -C "--disable-debug"
$THOME/build/dobuild -64only -gnu xfwm4-4.18.0 -C "--disable-debug"
$THOME/build/dobuild -64only -gnu xfce4-session-4.18.4 -C "--disable-debug"
$THOME/build/dobuild -64only -gnu exo-4.18.0 -C "--disable-debug"

# package step
$THOME/build/dobuild -64only -gnu xfce4-settings-4.18.6 -C "--disable-debug"
$THOME/build/dobuild -64only -gnu xfce4-appfinder-4.18.1 -C "--disable-debug"
$THOME/build/dobuild -64only -gnu xfce4-panel-4.18.6 -C "--disable-debug"
$THOME/build/dobuild -64only -gnu xfdesktop-4.18.1 -C "--disable-debug"
$THOME/build/dobuild -64only -gnu thunar-4.18.11 -C "--disable-debug"

$THOME/build/genpkg TRIBxfce xfce4-dev-tools-4.18.1 libxfce4util-4.18.2 tumbler-4.18.2 xfconf-4.18.3 libxfce4ui-4.18.6 garcon-4.18.2 xfwm4-4.18.0 xfce4-session-4.18.4 exo-4.18.0 xfce4-settings-4.18.6 xfce4-appfinder-4.18.1 xfce4-panel-4.18.6 xfdesktop-4.18.1 thunar-4.18.11
