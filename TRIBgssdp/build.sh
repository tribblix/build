#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# disabling sniffer is what used to be --without-gtk
# manpages disabled because they require pandoc
#
env TRIBBLIX_LDFLAGS=-lsocket ${THOME}/build/mesonbuild -64only gssdp-1.6.5 -C "-Dsniffer=false -Dmanpages=false"
${THOME}/build/genpkg TRIBgssdp gssdp-1.6.5
