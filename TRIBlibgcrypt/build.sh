#!/bin/sh
#
${THOME}/build/dobuild libgcrypt-1.8.2
mv libgcrypt-1.8.2 libgcrypt-1.8.2-32bit
${THOME}/build/dobuild +64 libgcrypt-1.8.2 -C "--disable-amd64-as-feature-detection --disable-asm"
mv libgcrypt-1.8.2-32bit libgcrypt-1.8.2
${THOME}/build/genpkg TRIBlibgcrypt libgcrypt-1.8.2
