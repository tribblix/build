#!/bin/sh
#
${THOME}/build/dobuild libgcrypt-1.7.8
mv libgcrypt-1.7.8 libgcrypt-1.7.8-32bit
${THOME}/build/dobuild +64 libgcrypt-1.7.8 -C "--disable-amd64-as-feature-detection --disable-asm"
mv libgcrypt-1.7.8-32bit libgcrypt-1.7.8
${THOME}/build/genpkg TRIBlibgcrypt libgcrypt-1.7.8
