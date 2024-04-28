#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only rsync-3.3.0 -C "--disable-xxhash --with-included-popt"
${THOME}/build/genpkg TRIBrsync rsync-3.3.0
