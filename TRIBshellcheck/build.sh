#!/bin/sh
#
git clone https://github.com/koalaman/shellcheck
cd shellcheck
/usr/bin/cabal install --bindir=/tmp/cbls/usr/bin

${THOME}/build/create_pkg TRIBshellcheck /tmp/cbls
rm -fr /tmp/cbls
