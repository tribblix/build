#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# It will pick up libicu as the runtime by default, but we want to avoid
# such a large package being pulled in by curl
# The alternative is libidn{,2} but that pulls in libunistring and again
# the dependency tree starts to expand
# Which is why we --disable-runtime
#
${THOME}/build/dobuild -64 libpsl-0.21.5 -C "--disable-static --disable-dependency-tracking --enable-builtin --disable-runtime"
${THOME}/build/genpkg TRIBlibpsl libpsl-0.21.5
