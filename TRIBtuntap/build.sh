#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs the illumos versions of the gcc compiler
# zap install TRIBdev-illumos-gcc10
#
# which means this should be built on an illumos-build zone
#
# tuntap version 1.3.3 == tag 10850b5 on github
# build from github latest to pick up more recent fixes
#
env PATH=/opt/gcc/10.4.0/bin:$PATH \
TRIBBLIX_CFLAGS="-fno-shrink-wrap -ffreestanding -mno-mmx -mno-sse -mindirect-branch=thunk-extern -mindirect-branch-register -msave-args" \
${THOME}/build/dobuild +64 https://github.com/kaizawa/tuntap -C --enable-64-bit
# include tunctl here
${THOME}/build/dobuild -64only https://github.com/kaizawa/tunctl
${THOME}/build/genpkg TRIBtuntap tuntap tunctl
