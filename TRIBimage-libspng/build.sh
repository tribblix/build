#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only libspng-0.7.4
${THOME}/build/genpkg TRIBimage-libspng libspng-0.7.4
