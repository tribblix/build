#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64only -gnu atril-1.26.1 -C --without-keyring
${THOME}/build/genpkg TRIBmate-atril atril-1.26.1
