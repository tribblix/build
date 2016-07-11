#!/bin/sh
#
${THOME}/build/dobuild libgcrypt-1.6.3
mv libgcrypt-1.6.3 libgcrypt-1.6.3-32bit
${THOME}/build/dobuild +64 libgcrypt-1.6.3 -C "--disable-amd64-as-feature-detection --disable-asm"
mv libgcrypt-1.6.3-32bit libgcrypt-1.6.3
${THOME}/build/genpkg TRIBlibgcrypt libgcrypt-1.6.3
