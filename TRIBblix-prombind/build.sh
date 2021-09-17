#!/bin/tcsh
#

mkdir pb1
cd pb1
setenv GOPATH `pwd`
env PATH=/usr/versions/go-1.15/bin:$PATH go get github.com/prometheus-community/bind_exporter
cd $GOPATH/src/github.com/prometheus-community/bind_exporter

#
# need promu first
#
env PATH=/usr/versions/go-1.15/bin:$PATH go get -u github.com/prometheus/promu
#
# a plain make does a bunch of other things that just fail
#
env PATH=/usr/versions/go-1.15/bin:$PATH gmake common-build

${THOME}/build/genpkg TRIBblix-prombind
