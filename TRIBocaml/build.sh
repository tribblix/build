#!/bin/sh
#
${THOME}/build/unpack ocaml-4.03.0
cd ocaml-4.03.0
env PATH=/usr/gnu/bin:$PATH ./configure -cc "gcc -fPIC" -aspp "gcc -c -fPIC" -prefix /usr -mandir /usr/share/man/man1
env PATH=/usr/gnu/bin:$PATH gmake -j 8 world.opt >& log.world
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/genpkg TRIBocaml
