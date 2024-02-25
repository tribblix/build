#!/bin/tcsh
#
# requires go, node, yarn
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
env PATH=/usr/versions/go-1.21/bin:$PATH gmake build
cd ..

#
# the new build with the react app requires yarn and node
#
git clone https://github.com/prometheus/prometheus.git
cd prometheus
# be specific, 2.45 is LTS
git checkout v2.45.3
env PATH=/usr/gnu/bin:/usr/versions/yarn-v1.22.19/bin:/usr/versions/node-v20/bin:/usr/versions/go-1.21/bin:$PATH gmake build
cd ..

rm -fr /tmp/ppr1
mkdir -p /tmp/ppr1/opt/tribblix/prometheus/bin
cp prometheus/promtool /tmp/ppr1/opt/tribblix/prometheus/bin
cp prometheus/prometheus /tmp/ppr1/opt/tribblix/prometheus/bin
cp -r prometheus/docs /tmp/ppr1/opt/tribblix/prometheus/docs
cp prometheus/README.md prometheus/LICENSE /tmp/ppr1/opt/tribblix/prometheus/docs

$THOME/build/create_pkg TRIBblix-prometheus /tmp/ppr1
rm -fr /tmp/ppr1
