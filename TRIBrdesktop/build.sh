#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only rdesktop-1.9.0 -C "--disable-credssp --disable-smartcard"
${THOME}/build/genpkg TRIBrdesktop rdesktop-1.9.0
