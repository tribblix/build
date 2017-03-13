#!/bin/sh
#
# rename the tarball
#  mv fossil-src-2.0.tar.gz fossil-2.0.tar.gz
#
# probably want to stick with 2.0 for a while as 2.1 is incompatible
# with fossil versions before 2.0
#
${THOME}/build/dobuild fossil-2.0
${THOME}/build/genpkg TRIBfossil fossil-2.0
