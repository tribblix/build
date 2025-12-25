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
#
env PATH=/opt/gcc/10.4.0/bin:$PATH \
TRIBBLIX_CFLAGS="-fno-shrink-wrap -ffreestanding -mno-mmx -mno-sse -mindirect-branch=thunk-extern -mindirect-branch-register -msave-args" \
${THOME}/build/dobuild +64 tuntap-1.3.3 -C --enable-64-bit
# include tunctl here
${THOME}/build/dobuild -64only tunctl-0.1.1
${THOME}/build/genpkg TRIBtuntap tuntap-1.3.3 tunctl-0.1.1
