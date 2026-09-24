#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only rsync-3.5.1 -C "--disable-xxhash --with-included-popt --disable-idn"
${THOME}/build/genpkg TRIBrsync rsync-3.5.1
