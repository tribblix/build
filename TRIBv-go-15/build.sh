#!/bin/sh
#
# go1.5
rm -fr go
${THOME}/build/unpack go1.5.4.src
cd go/src
#[the following step looks wrong as the location isn't mentioned]
gsed -i s:/etc/ssl/certs/ca-certificates.crt:/etc/openssl/cacert.pem: crypto/x509/root_unix.go
env GOROOT_BOOTSTRAP=/usr/versions/go-1.5 GOROOT_FINAL=/usr/versions/go-1.5 ./make.bash
#Hm. One of the trace tests fails. https://github.com/golang/go/issues/12056
cd ..
rm -fr /tmp/gg
mkdir -p /tmp/gg/usr/versions/go-1.5
tar cf - . | (cd /tmp/gg/usr/versions/go-1.5 ; tar xf -)
env GOROOT=/tmp/gg/usr/versions/go-1.5 GOROOT_FINAL=/usr/versions/go-1.5 GOPATH=`pwd` ./bin/go get golang.org/x/tools/cmd/godoc
# cover and vet now included (
#env GOROOT=/tmp/gg/usr/versions/go-1.5 GOROOT_FINAL=/usr/versions/go-1.5 GOPATH=`pwd` ./bin/go get golang.org/x/tools/cmd/cover
#env GOROOT=/tmp/gg/usr/versions/go-1.5 GOROOT_FINAL=/usr/versions/go-1.5 GOPATH=`pwd` ./bin/go get golang.org/x/tools/cmd/vet
${THOME}/build/create_pkg TRIBv-go-15 /tmp/gg
rm -fr /tmp/gg
