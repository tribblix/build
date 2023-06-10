#!/bin/tcsh
#

$THOME/build/unpack bind_exporter-0.5.0
cd bind_exporter-0.5.0

mkdir p1
cd p1
setenv GOPATH `pwd`
mkdir -p $GOPATH/src/github.com/prometheus
cd $GOPATH/src/github.com/prometheus

#
# we need to build the promu tool first, as otherwise the main build
# tries to download it which fails as there isn't a prebuilt one
# for solaris
#
git clone https://github.com/prometheus/promu.git
cd promu
env PATH=/usr/versions/go-1.20/bin:$PATH gmake build
cd ..

$THOME/build/unpack bind_exporter-0.6.1
cd bind_exporter-0.6.1
env PATH=/usr/versions/go-1.20/bin:$PATH gmake build

${THOME}/build/genpkg TRIBblix-prombind
