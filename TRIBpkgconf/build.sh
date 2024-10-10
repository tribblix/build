#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is touted as a replacement for pkg-config; we ship it as
# a supplement (see also the fixit file which will need to be
# adjusted if we retire pkg-config at some future time)
#
${THOME}/build/dobuild -64only pkgconf-2.3.0
${THOME}/build/genpkg TRIBpkgconf pkgconf-2.3.0
