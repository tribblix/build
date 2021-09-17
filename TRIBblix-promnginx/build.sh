#!/bin/tcsh
#


mkdir pn1
cd pn1
setenv GOPATH `pwd`
env PATH=/usr/versions/go-1.15/bin:$PATH go get github.com/nginxinc/nginx-prometheus-exporter
cd $GOPATH/src/github.com/nginxinc/nginx-prometheus-exporter/
env PATH=/usr/versions/go-1.15/bin:$PATH gmake

${THOME}/build/genpkg TRIBblix-promnginx
