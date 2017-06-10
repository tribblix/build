#!/bin/sh
#
# depends on python
# needs the gnurealine module
#
rm -fr /tmp/ckx
mkdir -p /tmp/ckx/usr/versions
cd /tmp/ckx/usr/versions
git clone https://github.com/commixproject/commix.git commix
cd commix
rm -fr .git
rm -f .gitignore .travis.yml
cd
${THOME}/build/create_pkg TRIBcommix /tmp/ckx
rm -fr /tmp/ckx
