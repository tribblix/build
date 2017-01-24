#!/bin/sh
#
${THOME}/build/dobuild libgcrypt-1.7.6
mv libgcrypt-1.7.6 libgcrypt-1.7.6-32bit
${THOME}/build/dobuild +64 libgcrypt-1.7.6 -C "--disable-amd64-as-feature-detection --disable-asm"
mv libgcrypt-1.7.6-32bit libgcrypt-1.7.6
${THOME}/build/genpkg TRIBlibgcrypt libgcrypt-1.7.6
