#!/bin/sh
#
# requires go
#
git clone https://github.com/andreaskoch/allmark.git
cd allmark
env PATH=/usr/versions/go-1.6/bin:$PATH go run make.go -install
rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/allmark/bin
cp bin/allmark /tmp/ee/opt/tribblix/allmark/bin
cp README.md /tmp/ee/opt/tribblix/allmark
${THOME}/build/create_pkg TRIBblix-allmark /tmp/ee
rm -fr /tmp/ee
