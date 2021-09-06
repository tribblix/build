#!/bin/sh
#
git clone https://filippo.io/age
cd age
# do not set GOPATH
go build -o . filippo.io/age/cmd/...
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/age
mkdir -p /tmp/cs/usr/share/man/man1
cp age age-keygen /tmp/cs/usr/bin
cp README.md LICENSE /tmp/cs/usr/share/age
cp doc/*.1 /tmp/cs/usr/share/man/man1
${THOME}/build/create_pkg TRIBage /tmp/cs
rm -fr /tmp/cs
