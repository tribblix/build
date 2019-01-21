#!/bin/tcsh
#
mkdir sk
cd sk
setenv GOPATH `pwd`
git clone https://github.com/containers/skopeo $GOPATH/src/github.com/containers/skopeo
cd $GOPATH/src/github.com/containers/skopeo
gmake binary-local

#
# fix vendor/github.com/containers/storage/lockfile_unix.go
# copy TouchedSince from lockfile_linux.go
#
# fix vendor/github.com/docker/docker/client/client_unix.go
# build solaris
#
gmake binary-local

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp skopeo /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/skopeo
cp LICENSE README.md default-policy.json /tmp/ee/usr/share/skopeo
${THOME}/build/create_pkg TRIBskopeo /tmp/ee
rm -fr /tmp/ee
