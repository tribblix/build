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
$THOME/build/unpack diff-so-fancy-1.4.10
mv diff-so-fancy-1.4.10 diff-so-fancy
cd diff-so-fancy
rm -fr .github .circleci .gitmodules .gitignore .npmignore test third_party appveyor.yml package*json update-deps.sh
cd
${THOME}/build/create_pkg TRIBdiff-so-fancy /tmp/ckx
rm -fr /tmp/ckx
