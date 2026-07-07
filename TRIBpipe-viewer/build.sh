#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS="-D_XOPEN_SOURCE -D_XOPEN_VERSION=4" ${THOME}/build/dobuild -64only pv-1.11.0 -C --disable-nls
${THOME}/build/genpkg TRIBpipe-viewer pv-1.11.0
