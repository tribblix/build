#!/bin/sh
#
# atril-1.14.1 needs caja
${THOME}/build/dobuild -gnu atril-1.14.1 -C --without-keyring
${THOME}/build/genpkg TRIBmate-atril atril-1.14.1
