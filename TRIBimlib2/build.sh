#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# it tries to build 32-bit assembler on 64-bit, so need to be specific
#
${THOME}/build/dobuild -64only imlib2-1.12.3 +C --enable-amd64
${THOME}/build/genpkg TRIBimlib2 imlib2-1.12.3
