#!/bin/sh
#
# later versions need a newer vte than we have
#
${THOME}/build/unpack sakura-3.5.0
cd sakura-3.5.0
env PATH=/usr/gnu/bin:$PATH cmake -DCMAKE_INSTALL_PREFIX=/usr .
env PATH=/usr/gnu/bin:$PATH gmake -j 4
${THOME}/build/genpkg TRIBsakura

