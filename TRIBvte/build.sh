#!/bin/sh
#
# this is a patched vte, that handles home/end/pgup/pgdown sanely
# without requiring shift
#
${THOME}/build/dobuild -gnu vte-0.42.5 -C "--disable-Bsymbolic --enable-introspection=no --enable-vala=no --without-gnutls"
${THOME}/build/genpkg TRIBvte vte-0.42.5
