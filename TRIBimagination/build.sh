#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# configure stomps on CFLAGS, so explicitly set CPPFLAGS
#
env CPPFLAGS=-m64 ${THOME}/build/dobuild -64only -gnu imagination-3.6
${THOME}/build/genpkg TRIBimagination imagination-3.6
