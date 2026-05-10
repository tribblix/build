#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the manual pages are unpacked with the fixit script, so remember
# to update the version there too
#
${THOME}/build/dobuild -64only git-2.54.0 -C --with-perl=/usr/perl5/`${THOME}/build/getperlver`/bin/perl
${THOME}/build/genpkg TRIBdev-versioning-git git-2.54.0
