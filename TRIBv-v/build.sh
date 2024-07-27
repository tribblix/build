#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
git clone https://github.com/vlang/v
cd v
#
# the make downloads the source, so we have to run make, let it fail
# and then fix the source
#
gmake CC=gcc
sed -i 's:"cc":"gcc":' vc/v.c
sed -i "s:return 'cc':return 'gcc':" vlib/v/pref/default.v
sed -i "s:p.ccompiler = 'cc':p.ccompiler = 'gcc':" vlib/v/pref/default.v
gmake CC=gcc

#
# there's no install, so just copy what we have
#
rm -fr .git
rm -fr vc/.git
rm -fr thirdparty/tcc/.git
rm -fr .github
rm -f .git*
rm -f .cirrus.yml
rm -f .editorconfig
rm -f Dockerfile*
rm -f make.bat
rm -f `find . -name '.gitignore'`
rm -f `find . -name '.gitattributes'`

mkdir -p /tmp/ppv/usr/versions/v
tar cf - . | (cd /tmp/ppv/usr/versions/v ; tar xf -)
${THOME}/build/create_pkg TRIBv-v /tmp/ppv
rm -fr /tmp/ppv
