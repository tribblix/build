#!/bin/tcsh
#


mkdir pb1
cd pb1
setenv GOPATH `pwd`
go get github.com/digitalocean/bind_exporter
cd $GOPATH/src/github.com/digitalocean/bind_exporter

#
# the makefile is broken; setting GOOS and GOARCH is almost always a mistake
#
# so run the build steps by hand
#
env GO15VENDOREXPERIMENT=1 go get -u github.com/prometheus/promu
$GOPATH/bin/promu build --prefix $GOPATH/src/github.com/digitalocean/bind_exporter

${THOME}/build/genpkg TRIBblix-prombind
