#!/bin/sh
#
${THOME}/build/dobuild -gnu -64 libsoup-2.56.1 -C "--without-gnome --disable-more-warnings --disable-introspection --without-krb5-config"
${THOME}/build/genpkg TRIBlibsoup libsoup-2.56.1
