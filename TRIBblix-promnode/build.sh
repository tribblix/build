#!/bin/tcsh
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

#
git clone https://github.com/prometheus/node_exporter.git
cd node_exporter
#
# cp collector/uname_bsd.go collector/uname_solaris.go
# and change to build on solaris
# and add solaris to the build of collector/uname.go
#
env PATH=/usr/versions/go-1.20/bin:$PATH gmake build
cd ..

${THOME}/build/genpkg TRIBblix-promnode
