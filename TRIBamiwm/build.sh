#!/bin/sh
#
${THOME}/build/dobuild amiwm0.21pl2 -J 1
cd amiwm0.21pl2
gmake -n install DESTDIR=/tmp/a | sed 's:/usr:/tmp/a/usr:g' | sed -e s:/tmp/a/usr/bin/ginstall:/usr/bin/ginstall: -e s:/usr/man:/usr/share/man: >! doit.sh
rm -fr /tmp/a
sh doit.sh
${THOME}/build/create_pkg TRIBamiwm /tmp/a
rm -fr /tmp/a
