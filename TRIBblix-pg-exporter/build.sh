#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

mkdir p1
cd p1

$THOME/build/unpack pg_exporter-1.0.2
cd pg_exporter-1.0.2
env GOPATH=`pwd`/.. PATH=/usr/versions/go-1.25/bin:$PATH go build -o pg_exporter

#
# make install incorrectly rebuilds it, so need the same environment
#
env GOPATH=`pwd`/.. PATH=/usr/versions/go-1.25/bin:$PATH ${THOME}/build/genpkg TRIBblix-pg-exporter
cd ..
