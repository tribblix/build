#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu atril-1.22.3 -C --without-keyring
${THOME}/build/genpkg TRIBmate-atril atril-1.22.3
