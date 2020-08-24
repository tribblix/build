#!/bin/tcsh
#
# requires go
#
setenv GOPATH `pwd`
mkdir -p src/github.com/andreaskoch
cd src/github.com/andreaskoch
git clone https://github.com/andreaskoch/allmark.git
cd allmark
env PATH=/usr/versions/go-1.14/bin:$PATH gmake
rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/allmark/bin
cp bin/files/allmark /tmp/ee/opt/tribblix/allmark/bin
cp README.md /tmp/ee/opt/tribblix/allmark
${THOME}/build/create_pkg TRIBblix-allmark /tmp/ee
rm -fr /tmp/ee
