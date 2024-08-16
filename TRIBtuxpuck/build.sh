#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# If you download the source from launchpad you'll need to rename it
#  mv tuxpuck_0.8.2.orig.tar.gz tuxpuck-0.8.2.tar.gz
#
env CFLAGS="-m64" ${THOME}/build/dobuild -64only tuxpuck-0.8.2 -J 1
${THOME}/build/genpkg TRIBtuxpuck tuxpuck-0.8.2
