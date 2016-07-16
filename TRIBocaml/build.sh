#!/bin/sh
#
# [patch needed for shared build, should be unnecessary next time]
#
${THOME}/build/unpack ocaml-4.02.3
cd ocaml-4.02.3
env PATH=/usr/gnu/bin:$PATH ./configure -cc "gcc -fPIC" -aspp "gcc -c -fPIC" -prefix /usr -mandir /usr/share/man/man1
env PATH=/usr/gnu/bin:$PATH gmake -j 8 world.opt >& log.world
env PATH=/usr/gnu/bin:$PATH gmake install DESTDIR=/tmp/oo1
${THOME}/build/create_pkg TRIBocaml /tmp/oo1
