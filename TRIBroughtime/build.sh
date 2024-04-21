#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

mkdir c
cd c

# the instructions are definitely wrong
# go get -u github.com/cloudflare/roughtime
# go install github.com/cloudflare/roughtime...

git clone https://github.com/cloudflare/roughtime
cd roughtime
sed -i s:ecosystem.json:/etc/roughtime/ecosystem.json: recipes/alerter.go
env GOPATH=`pwd`/.. go build -v recipes/alerter.go
env GOPATH=`pwd`/.. go build -v cmd/getroughtime/main.go

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp main /tmp/ee/usr/bin/getroughtime
cp alerter /tmp/ee/usr/bin/roughtime-alerter
mkdir -p /tmp/ee/usr/share/doc/roughtime
cp LICENSE README.md /tmp/ee/usr/share/doc/roughtime
mkdir -p /tmp/ee/etc/roughtime
cp ecosystem.json /tmp/ee/etc/roughtime
${THOME}/build/create_pkg TRIBroughtime /tmp/ee
rm -fr /tmp/ee

cd ../..
rm -fr c
