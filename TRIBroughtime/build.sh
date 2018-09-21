#!/bin/sh
#

mkdir c
cd c
setenv GOPATH `pwd`

go get -u github.com/cloudflare/roughtime
go install github.com/cloudflare/roughtime...

sed -i s:ecosystem.config:/etc/roughtime/ecosystem.config: src/github.com/cloudflare/roughtime/recipes/alerter.go
go build src/github.com/cloudflare/roughtime/recipes/alerter.go

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp bin/getroughtime /tmp/ee/usr/bin
cp alerter /tmp/ee/usr/bin/roughtime-alerter
mkdir -p /tmp/ee/usr/share/doc/roughtime
cp src/github.com/cloudflare/roughtime/LICENSE src/github.com/cloudflare/roughtime/README.md /tmp/ee/usr/share/doc/roughtime
mkdir -p /tmp/ee/etc/roughtime
cp src/github.com/cloudflare/roughtime/ecosystem.config /tmp/ee/etc/roughtime
${THOME}/build/create_pkg TRIBroughtime /tmp/ee
rm -fr /tmp/ee

cd ..
rm -fr c
