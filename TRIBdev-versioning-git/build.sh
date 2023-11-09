#!/bin/sh
#
${THOME}/build/dobuild -64only git-2.42.1 -C --with-perl=/usr/perl5/5.34/bin/perl
${THOME}/build/genpkg TRIBdev-versioning-git git-2.42.1
