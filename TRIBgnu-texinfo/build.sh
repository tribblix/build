#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only texinfo-7.1.1
${THOME}/build/genpkg TRIBgnu-texinfo texinfo-7.1.1
