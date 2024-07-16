#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu mate-session-manager-1.28.0 -C --without-libglesv2
${THOME}/build/genpkg TRIBmate-session mate-session-manager-1.28.0
