#!/bin/sh
#
# this is a patched vte, that handles home/end/pgup/pgdown sanely
# without requiring shift
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64 vte-0.52.4 -C "--disable-Bsymbolic --enable-introspection=no --enable-vala=no"
${THOME}/build/genpkg TRIBvte vte-0.52.4
