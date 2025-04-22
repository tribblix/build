#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXft-2.3.9 -C "--disable-static --with-pic --localstatedir=/var"
${THOME}/build/genpkg TRIBx11-libxft libXft-2.3.9
