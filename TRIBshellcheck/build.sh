#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
git clone https://github.com/koalaman/shellcheck
cd shellcheck
/usr/bin/cabal install --installdir=/tmp/cbls/usr/bin --install-method=copy

# it can be ridiculously big
strip /tmp/cbls/usr/bin/shellcheck

# this bit requires pandoc
./manpage
mkdir -p /tmp/cbls/usr/share/man/man1
cp shellcheck.1 /tmp/cbls/usr/share/man/man1

${THOME}/build/create_pkg TRIBshellcheck /tmp/cbls
rm -fr /tmp/cbls
