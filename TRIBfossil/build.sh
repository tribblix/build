#!/bin/sh
#
# rename the tarball
#  mv fossil-src-1.35.tar.gz fossil-1.35.tar.gz
#
${THOME}/build/dobuild fossil-1.35
${THOME}/build/genpkg TRIBfossil fossil-1.35
