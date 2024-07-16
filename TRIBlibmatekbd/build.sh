#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu libmatekbd-1.28.0 -C --disable-introspection
${THOME}/build/genpkg TRIBlibmatekbd libmatekbd-1.28.0
