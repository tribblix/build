#!/bin/sh
#
git clone https://github.com/kitabisa/teler
cd teler
#
# edit pkg/errors/abort.go
# add golang.org/x/sys/unix to import
# Getpid and Getpgid are unix not syscall
#
gmake build
#
# and do what it says when it asks for a go get
#

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/teler/bin
cp bin/teler /tmp/ee/opt/tribblix/teler/bin
cp README.md /tmp/ee/opt/tribblix/teler
${THOME}/build/create_pkg TRIBblix-teler /tmp/ee
rm -fr /tmp/ee
cd ..
