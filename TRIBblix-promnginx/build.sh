#!/bin/tcsh
#


mkdir pn1
cd pn1
setenv GOPATH `pwd`
go get github.com/nginxinc/nginx-prometheus-exporter
cd $GOPATH/src/github.com/nginxinc/nginx-prometheus-exporter/
gmake

${THOME}/build/genpkg TRIBblix-promnginx
