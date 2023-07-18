#!/bin/sh
#
# bumps the SONAME, so upgrades to a newer 1.X require
# consumers to be rebuilt
#
${THOME}/build/cmbuild -64only libgit2-1.3.2 -C -DBUILD_CLAR=OFF
${THOME}/build/genpkg TRIBlibgit2 libgit2-1.3.2
