#!/bin/tcsh
#

mkdir pb1
cd pb1
setenv GOPATH `pwd`
go get github.com/prometheus-community/bind_exporter
cd $GOPATH/src/github.com/prometheus-community/bind_exporter

#
# need promu first
#
env GO15VENDOREXPERIMENT=1 go get -u github.com/prometheus/promu
env PATH=/usr/versions/go-1.13/bin:$PATH gmake

${THOME}/build/genpkg TRIBblix-prombind
