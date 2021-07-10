#!/bin/sh
#
${THOME}/build/dobuild -gnu -64 glib-networking-2.44.0 -C "--without-ca-certificates"
${THOME}/build/genpkg TRIBglib-networking glib-networking-2.44.0
