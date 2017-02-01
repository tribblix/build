#!/bin/sh
#
git clone https://github.com/cslarsen/jp2a.git
cd jp2a
autoreconf -vi
./configure --prefix=/usr
env LD_OPTIONS="-M /usr/lib/ld/map.noexdata -M /usr/lib/ld/map.noexstk -M /usr/lib/ld/map.pagealign -Bdirect -z ignore" gmake
${THOME}/build/genpkg TRIBjp2a
cd ..
rm -fr jp2a
