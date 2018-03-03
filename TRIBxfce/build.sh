#!/bin/sh

$THOME/build/dobuild -gnu libxfce4util-4.12.1 -C "--disable-debug"
$THOME/build/dobuild -gnu xfconf-4.12.1 -C "--disable-debug"
$THOME/build/dobuild -gnu libxfce4ui-4.12.1 -C "--disable-debug --with-vendor-info=Tribblix"
$THOME/build/dobuild -gnu exo-0.10.7 -C "--disable-debug"
$THOME/build/dobuild -gnu garcon-0.4.0 -C "--disable-debug"
$THOME/build/dobuild -gnu xfce4-appfinder-4.12.0 -C "--disable-debug"
$THOME/build/dobuild -gnu xfce4-panel-4.12.2 -C "--disable-debug"
$THOME/build/dobuild -gnu tumbler-0.1.31 -C "--disable-debug"
$THOME/build/dobuild -gnu Thunar-1.6.14 -C "--disable-debug"
$THOME/build/dobuild -gnu xfce4-settings-4.12.2 -C "--disable-debug"
$THOME/build/dobuild -gnu gtk-xfce-engine-2.10.1 -C "--disable-debug"
$THOME/build/dobuild -gnu xfce4-session-4.12.1 -C "--disable-debug"
$THOME/build/dobuild -gnu xfdesktop-4.12.3 -C "--disable-debug"
$THOME/build/dobuild -gnu xfwm4-4.12.4 -C "--disable-debug"
$THOME/build/dobuild -gnu xfwm4-themes-4.10.0

rm -fr /tmp/xfu
(cd libxfce4util-4.12.1; gmake DESTDIR=/tmp/xfu install)
(cd xfconf-4.12.1; gmake DESTDIR=/tmp/xfu install)
(cd libxfce4ui-4.12.1 ; gmake DESTDIR=/tmp/xfu install)
(cd exo-0.10.7 ; gmake DESTDIR=/tmp/xfu install)
(cd garcon-0.4.0 ; gmake DESTDIR=/tmp/xfu install)
(cd xfce4-appfinder-4.12.0; gmake DESTDIR=/tmp/xfu install)
(cd xfce4-panel-4.12.2 ; gmake DESTDIR=/tmp/xfu install)
(cd tumbler-0.1.31 ; gmake DESTDIR=/tmp/xfu install)
(cd Thunar-1.6.14 ; gmake DESTDIR=/tmp/xfu install)
(cd xfce4-settings-4.12.2 ; gmake DESTDIR=/tmp/xfu install)
(cd gtk-xfce-engine-2.10.1 ; gmake DESTDIR=/tmp/xfu install)
(cd xfce4-session-4.12.1 ; gmake DESTDIR=/tmp/xfu install)
(cd xfdesktop-4.12.3 ; gmake DESTDIR=/tmp/xfu install)
(cd xfwm4-4.12.4 ; gmake DESTDIR=/tmp/xfu install)
(cd xfwm4-themes-4.10.0 ; gmake DESTDIR=/tmp/xfu install)

$THOME/build/create_pkg TRIBxfce /tmp/xfu
