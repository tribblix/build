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

$THOME/build/unpack pgbouncer_exporter-0.11.0
cd pgbouncer_exporter-0.11.0
env GOPATH=`pwd`/.. PATH=/usr/versions/go-1.25/bin:$PATH gmake build

${THOME}/build/genpkg TRIBblix-prompgbouncer
cd ..
