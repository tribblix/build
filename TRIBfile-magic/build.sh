#!/bin/sh
#
# if the version gets updated, rebuild TRIBmog to match
#
${THOME}/build/dobuild -64only file-5.45 -C --disable-lzlib
${THOME}/build/genpkg TRIBfile-magic file-5.45
