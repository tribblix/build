#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# usually bumps the SONAME, so upgrades require consumers to be rebuilt
#
${THOME}/build/cmbuild -64only libgit2-1.7.2 -C "-DBUILD_CLI=OFF -DBUILD_TESTS=OFF -DUSE_SSH=ON"
${THOME}/build/genpkg TRIBlibgit2 libgit2-1.7.2
