#!/bin/sh
#
# the manual pages are unpacked with the fixit script, so remember
# to update the version there too
#
${THOME}/build/dobuild -64only git-2.43.2 -C --with-perl=/usr/perl5/5.34/bin/perl
${THOME}/build/genpkg TRIBdev-versioning-git git-2.43.2
