#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# it's a straight makefile
# ignore the env noise, it's non-portable
#
${THOME}/build/dobuild -n git-lfs-3.7.0 git-lfs-v3.7.0
#
# there's no make install, so fixinstall does all the work
#
${THOME}/build/genpkg TRIBgit-lfs git-lfs-v3.7.0
