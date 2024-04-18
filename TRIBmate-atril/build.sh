#!/bin/sh
#
${THOME}/build/dobuild -64only +gnu atril-1.26.2 -C --without-keyring
${THOME}/build/genpkg TRIBmate-atril atril-1.26.2
