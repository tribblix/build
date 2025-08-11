#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

mkdir p1
cd p1

$THOME/build/unpack pg_exporter-1.0.1
cd pg_exporter-1.0.1
env GOPATH=`pwd`/.. PATH=/usr/versions/go-1.24/bin:$PATH go build -o pg_exporter

${THOME}/build/genpkg TRIBblix-pg-exporter
cd ..
