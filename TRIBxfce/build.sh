#!/bin/sh
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
# at this stage, xfce still supports older plugins and applications,
# so still depends on gtk2
#

$THOME/build/dobuild -gnu tumbler-0.2.9 -C "--disable-debug"
$THOME/build/dobuild -gnu xfce4-dev-tools-4.14.0
$THOME/build/dobuild -gnu libxfce4util-4.14.0 -C "--disable-debug --enable-introspection=no"
# package step
$THOME/build/dobuild -gnu xfconf-4.14.3 -C "--disable-debug --enable-introspection=no"
# package step
$THOME/build/dobuild -gnu libxfce4ui-4.14.1 -C "--disable-debug --with-vendor-info=Tribblix --enable-introspection=no"
# package step
$THOME/build/dobuild -gnu garcon-0.6.4 -C "--disable-debug"
$THOME/build/dobuild -gnu xfwm4-4.14.5 -C "--disable-debug"
$THOME/build/dobuild -gnu xfce4-session-4.14.2 -C "--disable-debug"
$THOME/build/dobuild -gnu exo-0.12.11 -C "--disable-debug"
# package step
$THOME/build/dobuild -gnu xfce4-settings-4.14.3 -C "--disable-debug"
$THOME/build/dobuild -gnu xfce4-appfinder-4.14.0 -C "--disable-debug"
$THOME/build/dobuild -gnu xfce4-panel-4.14.4 -C "--disable-debug --enable-introspection=no"
$THOME/build/dobuild -gnu xfdesktop-4.14.2 -C "--disable-debug"
$THOME/build/dobuild -gnu thunar-1.8.15 -C "--disable-debug --enable-introspection=no"

$THOME/build/genpkg TRIBxfce tumbler-0.2.9 xfce4-dev-tools-4.14.0 libxfce4util-4.14.0 xfconf-4.14.3 libxfce4ui-4.14.1 garcon-0.6.4 xfwm4-4.14.5 xfce4-session-4.14.2 exo-0.12.11 xfce4-settings-4.14.3 xfce4-appfinder-4.14.0 xfce4-panel-4.14.4 xfdesktop-4.14.2 thunar-1.8.15
