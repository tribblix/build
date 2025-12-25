#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 flac-1.4.3 -C --disable-stack-smash-protection
${THOME}/build/genpkg TRIBlibflac flac-1.4.3
