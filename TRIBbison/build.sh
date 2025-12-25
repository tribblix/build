#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# explicitly tell the build where gm4 is, otherwise it will pick the
# 64-bit symlink which we may not support in perpetuity
#
env M4=/usr/bin/gm4 ${THOME}/build/dobuild -64only bison-3.8.2 -C --disable-yacc
${THOME}/build/genpkg TRIBbison bison-3.8.2
