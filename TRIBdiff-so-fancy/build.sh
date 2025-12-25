#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# depends on perl
#
rm -fr /tmp/ckx
mkdir -p /tmp/ckx/usr/versions
cd /tmp/ckx/usr/versions
#
git clone https://github.com/so-fancy/diff-so-fancy
cd diff-so-fancy
rm -fr .git .circleci .gitmodules .travis.yml test third_party appveyor.yml package*json
cd
${THOME}/build/create_pkg TRIBdiff-so-fancy /tmp/ckx
rm -fr /tmp/ckx
