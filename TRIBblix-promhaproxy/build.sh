#!/bin/sh
#

#
# current versions of haproxy have a built-in exporter, but this is still
# relevant for older versions
#

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

$THOME/build/unpack haproxy_exporter-0.15.0
cd haproxy_exporter-0.15.0
env PATH=/usr/versions/go-1.20/bin:$PATH gmake build
cd ..

${THOME}/build/genpkg TRIBblix-promhaproxy
