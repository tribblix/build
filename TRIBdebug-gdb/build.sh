#!/bin/sh
#
#
#
${THOME}/build/dobuild gdb-7.12.1 -C --disable-largefile
mv gdb-7.12.1 gdb-7.12.1-32
${THOME}/build/dobuild +64 gdb-7.12.1
mv gdb-7.12.1-32 gdb-7.12.1
env PATH=/usr/perl5/5.22.0/bin:$PATH ${THOME}/build/genpkg TRIBdebug-gdb gdb-7.12.1
