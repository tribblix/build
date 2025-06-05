#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# disable tests, otherwise expect is required
#
env TRIBBLIX_LDFLAGS=-lsocket TRIBBLIX_CFLAGS="-DHAVE_SYS_IOCCOM_H=1 -D_XOPEN_SOURCE=600 -D__EXTENSIONS__" ${THOME}/build/dobuild -A -64only swtpm-0.10.1 -C "--disable-static --localstatedir=/var --with-tss-user=root --with-tss-group=root --disable-tests"
#
# ginstall is correctly detected, but not always used
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/genpkg TRIBswtpm swtpm-0.10.1
