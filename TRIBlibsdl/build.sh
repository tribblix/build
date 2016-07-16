#!/bin/sh
#
# SDL in 64-bit for qemu
# Needs TRIBsys-header-audio
# mv shuffle to defeat unpack's automatic deletion of variants
env LDFLAGS="-m64" ${THOME}/build/dobuild +64 SDL-1.2.15
mv SDL-1.2.15-64bit SDL-1.2.15-64
${THOME}/build/dobuild SDL-1.2.15
mv SDL-1.2.15-64 SDL-1.2.15-64bit
${THOME}/build/genpkg TRIBlibsdl SDL-1.2.15
