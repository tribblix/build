#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# download the heartwood tarball from https://files.radicle.dev/releases/
#
mkdir heartwood-1.10.0
cd heartwood-1.10.0
${THOME}/build/unpack heartwood-1.10.0

#
# build everything
#
env AR=/usr/gnu/bin/ar cargo build --release --bins --locked

rm -fr /tmp/rdcl
mkdir -p /tmp/rdcl/usr/bin
ginstall -s -Dm755 ./target/release/rad -t /tmp/rdcl/usr/bin
ginstall -s -Dm755 ./target/release/git-remote-rad -t /tmp/rdcl/usr/bin
ginstall -s -Dm755 ./target/release/radicle-node -t /tmp/rdcl/usr/bin
mkdir -p /tmp/rdcl/usr/share/man/man1
asciidoctor --doctype manpage --backend manpage --destination-dir /tmp/rdcl/usr/share/man/man1 rad.1.adoc
asciidoctor --doctype manpage --backend manpage --destination-dir /tmp/rdcl/usr/share/man/man1 git-remote-rad.1.adoc
asciidoctor --doctype manpage --backend manpage --destination-dir /tmp/rdcl/usr/share/man/man1 radicle-node.1.adoc

${THOME}/build/create_pkg TRIBradicle /tmp/rdcl
rm -fr /tmp/rdcl
