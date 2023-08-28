#!/bin/sh
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
