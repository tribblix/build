#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we're now stable, so grab a stable build from
# https://forge.rust-lang.org/infra/other-installation-methods.html
#
${THOME}/build/unpack rust-1.89.0-x86_64-unknown-illumos
cd rust-1.89.0-x86_64-unknown-illumos

rm -fr /tmp/rrt
bash ./install.sh --prefix=/usr/versions/rust --destdir=/tmp/rrt

${THOME}/build/create_pkg TRIBrust /tmp/rrt
rm -fr /tmp/rrt
