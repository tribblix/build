#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libiconv-1.17 -P /usr/gnu
${THOME}/build/genpkg TRIBgnu-libiconv libiconv-1.17
