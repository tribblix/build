#!/bin/sh
#
${THOME}/build/dobuild libgcrypt-1.8.4
mv libgcrypt-1.8.4 libgcrypt-1.8.4-32bit
# sparc just requires --disable-asm
${THOME}/build/dobuild +64 libgcrypt-1.8.4 -C "--disable-amd64-as-feature-detection --disable-asm"
mv libgcrypt-1.8.4-32bit libgcrypt-1.8.4
${THOME}/build/genpkg TRIBlibgcrypt libgcrypt-1.8.4
