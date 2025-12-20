#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

mkdir p1
cd p1

#
# we need to build the promu tool first, as otherwise the main build
# tries to download it which fails as there isn't a prebuilt one
#
git clone https://github.com/prometheus/promu.git
cd promu
env GOPATH=`pwd`/.. PATH=/usr/versions/go-1.25/bin:$PATH gmake build
cd ..

#
$THOME/build/unpack node_exporter-1.10.2
cd node_exporter-1.10.2
#
# cp collector/uname_bsd.go collector/uname_solaris.go
# and change to build on solaris
# and add solaris to the build of collector/uname.go
#
env GOPATH=`pwd`/.. PATH=/usr/versions/go-1.25/bin:$PATH gmake build
cd ..

${THOME}/build/genpkg TRIBblix-promnode
