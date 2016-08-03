#!/bin/sh
#
# If you download the source from launchpad you'll need to rename it
#  mv tuxpuck_0.8.2.orig.tar.gz tuxpuck-0.8.2.tar.gz
#
${THOME}/build/dobuild tuxpuck-0.8.2 -J 1
${THOME}/build/genpkg TRIBtuxpuck tuxpuck-0.8.2
