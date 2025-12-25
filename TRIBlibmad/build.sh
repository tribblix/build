#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# switched to the tenacityteam fork
#
# you may need to recreate the tarball, as codeberg downloads unpack
# without the version number
#
${THOME}/build/cmbuild -64only libmad-0.16.4
${THOME}/build/genpkg TRIBlibmad libmad-0.16.4
