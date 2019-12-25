#!/bin/tcsh
#


mkdir ph1
cd ph1
setenv GOPATH `pwd`
go get github.com/prometheus/haproxy_exporter
cd $GOPATH/src/github.com/prometheus

#
# we need to build the promu tool first, as otherwise the main build
# tries to download it which fails as there isn't a prebuilt one
# for solaris
#
git clone https://github.com/prometheus/promu.git
cd promu
env PATH=/usr/versions/go-1.13/bin:$PATH gmake build
cd ..

cd haproxy_exporter
env PATH=/usr/versions/go-1.13/bin:$PATH gmake build
cd ..

${THOME}/build/genpkg TRIBblix-promhaproxy
