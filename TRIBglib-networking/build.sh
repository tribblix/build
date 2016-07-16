#!/bin/sh
#
${THOME}/build/dobuild -gnu glib-networking-2.30.2 -C "--without-ca-certificates"
${THOME}/build/genpkg TRIBglib-networking glib-networking-2.30.2
