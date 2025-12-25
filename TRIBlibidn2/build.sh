#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# note that all consumers of libidn use v1, not this libidn2
#
${THOME}/build/dobuild -64 libidn2-2.3.4 -C --with-included-libunistring
${THOME}/build/genpkg TRIBlibidn2 libidn2-2.3.4
