#!/bin/tcsh
#
mkdir sk
cd sk
setenv GOPATH `pwd`
git clone https://github.com/containers/skopeo $GOPATH/src/github.com/containers/skopeo
cd $GOPATH/src/github.com/containers/skopeo
#
# fix vendor/github.com/containers/storage/pkg/homedir/homedir_others.go
# add build !solaris
#
cp vendor/github.com/containers/storage/types/options_linux.go vendor/github.com/containers/storage/types/options_solaris.go
sed -i s:/run/:/var/run/: vendor/github.com/containers/storage/types/options_solaris.go

gmake bin/skopeo

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp bin/skopeo /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/skopeo
cp LICENSE README.md default-policy.json /tmp/ee/usr/share/skopeo
${THOME}/build/create_pkg TRIBskopeo /tmp/ee
rm -fr /tmp/ee
