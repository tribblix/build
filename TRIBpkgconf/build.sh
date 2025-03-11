#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is touted as a replacement for pkg-config; we ship it as
# a supplement (see also the fixit file which will need to be
# adjusted if we retire pkg-config at some future time)
#
${THOME}/build/dobuild -64only -A pkgconf-pkgconf-2.4.3
${THOME}/build/genpkg TRIBpkgconf pkgconf-pkgconf-2.4.3
