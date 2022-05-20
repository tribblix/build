#!/bin/sh
#
${THOME}/build/unpack sakura-3.8.5
cd sakura-3.8.5
# path for pod2man to generate the man page
env PATH=/usr/gnu/bin:${PATH}:/usr/perl5/bin cmake -DCMAKE_INSTALL_PREFIX=/usr .
env PATH=/usr/gnu/bin:$PATH gmake -j 4
${THOME}/build/genpkg TRIBsakura

