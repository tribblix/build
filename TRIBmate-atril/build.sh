#!/bin/sh
#
# atril needs caja
${THOME}/build/dobuild -gnu atril-1.14.2 -C --without-keyring
${THOME}/build/genpkg TRIBmate-atril atril-1.14.2
