#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to set CC as it doesn't otherwise pass -m64 when linking
#
env CC="gcc -m64" ${THOME}/build/dobuild -64only amiwm0.22pl2 -J 1
cd amiwm0.22pl2-64bit
# install doesn't follow DESTDIR
gmake -n install | sed 's:/usr:/tmp/a/usr:g' | sed -e s:/tmp/a/usr/bin/ginstall:/usr/bin/ginstall: -e s:/usr/man:/usr/share/man: -e s=:/tmp/a=:=g > doit.sh
rm -fr /tmp/a
sh doit.sh
${THOME}/build/create_pkg TRIBamiwm /tmp/a
rm -fr /tmp/a
