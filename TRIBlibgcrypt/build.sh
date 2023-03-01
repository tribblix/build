#!/bin/sh
#
${THOME}/build/dobuild libgcrypt-1.8.10
mv libgcrypt-1.8.10 libgcrypt-1.8.10-32bit
# sparc just requires --disable-asm
${THOME}/build/dobuild +64 libgcrypt-1.8.10 -C "--disable-amd64-as-feature-detection --disable-asm"
mv libgcrypt-1.8.10-32bit libgcrypt-1.8.10
${THOME}/build/genpkg TRIBlibgcrypt libgcrypt-1.8.10
