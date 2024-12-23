#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# documentation says to always build from current git
#
${THOME}/build/dobuild -64only https://github.com/LuaJIT/LuaJIT
${THOME}/build/genpkg TRIBluajit LuaJIT
