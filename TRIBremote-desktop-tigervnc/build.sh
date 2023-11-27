#!/bin/sh
#
# our own tigervnc
#
${THOME}/build/cmbuild -64only -gnu tigervnc-1.10.1
${THOME}/build/genpkg TRIBremote-desktop-tigervnc tigervnc-1.10.1
