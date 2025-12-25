#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# Custom cabal method as described at
# https://pandoc.org/installing.html#compiling-from-source
#
cabal update

$THOME/build/unpack pandoc-cli-0.1.1.1
cd pandoc-cli-0.1.1.1

cabal configure --prefix=/usr --flags=embed_data_files
cabal build
cabal install --installdir=/tmp/pd/usr/bin --install-method=copy -fembed_data_files
strip /tmp/pd/usr/bin/pandoc

#
# the man page is in the library, not the cli package
#
$THOME/build/unpack pandoc-3.1.8
mkdir -p /tmp/pd/usr/share/man/man1
cp pandoc-3.1.8/man/pandoc.1 /tmp/pd/usr/share/man/man1

$THOME/build/create_pkg TRIBpandoc /tmp/pd
