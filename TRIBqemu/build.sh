#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# big jump from 2.6 to 8
#

#
# note that we build all targets, but ship the common targets (arm, sparc, x86)
# in the main package, and all the others in the -extra package
#

env TRIBBLIX_CFLAGS="-D_POSIX_C_SOURCE=200112L -D_POSIX_PTHREAD_SEMANTICS -D__EXTENSIONS__=1 -O2" \
$THOME/build/dobuild -64only qemu-8.1.5 -P /usr/versions/qemu8 \
-C "--cc=gcc --localstatedir=/var/qemu --enable-slirp -Ddebug=false"

${THOME}/build/genpkg TRIBqemu qemu-8.1.5
