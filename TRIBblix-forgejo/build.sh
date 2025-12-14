#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/unpack forgejo-src-13.0.3
cd forgejo-src-13.0.3
#
# download the proper tarball, not the automated source dump
# this way, the assets are pregenerated and all you have to do
# is build the binary
#
env PATH=/usr/versions/go-1.25/bin:$PATH TAGS="bindata timetzdata sqlite sqlite_unlock_notify" gmake build

#
# yes, the executable is called gitea, because forgejo is a gitea
# fork, and it's that way for compatibility
# we add a symlink so that both names work
#
rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/forgejo/bin
cp gitea /tmp/ee/opt/tribblix/forgejo/bin
ln -s gitea /tmp/ee/opt/tribblix/forgejo/bin/forgejo
cp README.md /tmp/ee/opt/tribblix/forgejo
${THOME}/build/create_pkg TRIBblix-forgejo /tmp/ee
rm -fr /tmp/ee
