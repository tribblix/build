#!/bin/tcsh
#

mkdir p1
cd p1
setenv GOPATH `pwd`

#
# we need to build the promu tool first, as otherwise the main build
# tries to download it which fails as there isn't a prebuilt one
#
git clone https://github.com/prometheus/promu.git
cd promu
env PATH=/usr/versions/go-1.21/bin:$PATH gmake build
cd ..

$THOME/build/unpack pgbouncer_exporter-0.7.0
cd pgbouncer_exporter-0.7.0
env PATH=/usr/versions/go-1.21/bin:$PATH gmake build

${THOME}/build/genpkg TRIBblix-prompgbouncer
