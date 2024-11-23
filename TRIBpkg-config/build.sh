#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Need to build with +64only to get a 64-bit binary that defaults to the
# 32-bit search path, as that's what the rest of the build system expects
#
${THOME}/build/dobuild +64only pkg-config-0.29.2 -C --disable-host-tool
${THOME}/build/genpkg TRIBpkg-config pkg-config-0.29.2
