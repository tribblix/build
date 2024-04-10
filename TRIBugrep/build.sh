#!/bin/sh
#
${THOME}/build/dobuild -64only ugrep-5.1.4 -C "--enable-sse2 --disable-avx"
${THOME}/build/genpkg TRIBugrep ugrep-5.1.4
