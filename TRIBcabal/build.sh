#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# NOTE: if calling cabal, you may need to use the absolute path
# /usr/bin/cabal
# if you just use 'cabal' from the PATH it may get easily confused and fail
#

#
# if you already have cabal, you can use it to rebuild itself
#
# this is correct if the installed cabal is 2.2.0
# if current, use --installdir rather than --bindir
#
/usr/bin/cabal install --bindir=/tmp/cbls/usr/bin cabal-install
${THOME}/build/create_pkg TRIBcabal /tmp/cbls
rm -fr /tmp/cbls



exit 0

#
# below is the initial bootstrap of cabal
#

#
# this isn't the current version, but it is (almost) the version that matches
# our Haskell 8.4.4
#
# and this version has a bootstrap script so we can build it from scratch
#
${THOME}/build/unpack cabal-install-2.2.0.0
cd cabal-install-2.2.0.0
#
# run the bootstrap, using a new blank package database
# and prefixed to our DESTDIR
#
ghc-pkg init /tmp/cabalinst/db
env PREFIX=/tmp/cbli/usr \
    SCOPE_OF_INSTALLATION='--package-db=/tmp/cabalinst/db' \
    ./bootstrap.sh
${THOME}/build/create_pkg TRIBcabal /tmp/cbli
rm -fr /tmp/cbli /tmp/cabalinst
