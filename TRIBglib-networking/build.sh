#!/bin/sh
#
${THOME}/build/dobuild -gnu -64 glib-networking-2.30.2 -C "--without-ca-certificates"
${THOME}/build/genpkg TRIBglib-networking glib-networking-2.30.2
