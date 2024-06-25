#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the version number in pkginfo is made up, the old repo was 1.2
# and the new repo doesn't have any numbering
#
#${THOME}/build/dobuild -64only icewm-extra
#${THOME}/build/genpkg TRIBicewm-themes icewm-extra
${THOME}/build/pkg_tarball -P usr/share/icewm TRIBicewm-themes icewm-extra
