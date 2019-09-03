#!/bin/sh
#
${THOME}/build/dobuild libgcrypt-1.8.5
mv libgcrypt-1.8.5 libgcrypt-1.8.5-32bit
# sparc just requires --disable-asm
${THOME}/build/dobuild +64 libgcrypt-1.8.5 -C "--disable-amd64-as-feature-detection --disable-asm"
mv libgcrypt-1.8.5-32bit libgcrypt-1.8.5
${THOME}/build/genpkg TRIBlibgcrypt libgcrypt-1.8.5
