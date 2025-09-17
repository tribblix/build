#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-D_POSIX_PTHREAD_SEMANTICS ${THOME}/build/cmbuild +64 libssh-0.11.3 -C -DWITH_EXAMPLES=OFF
${THOME}/build/genpkg TRIBlibssh libssh-0.11.3
