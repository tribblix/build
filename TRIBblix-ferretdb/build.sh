#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
git clone https://github.com/FerretDB/FerretDB
cd FerretDB
git checkout v2.7.0

#
cd tools
go generate -x
cd ..

#
# Edit Taskfile.yml to add (ne OS "illumos") to RACE_FLAG just like windows
#  (yes, explicitly illumos)
#
./bin/task init

#
# ./bin/task build-production
#  [needs docker, so doesn't work]
# ./bin/task build-host
# or it's really just as simple as
echo 'bin' >! build/version/package.txt
go build -v -trimpath -o=bin/ferretdb ./cmd/ferretdb

#
rm -fr /tmp/fdb123
mkdir -p /tmp/fdb123/opt/tribblix/ferretdb/bin
cp ./bin/ferretdb /tmp/fdb123/opt/tribblix/ferretdb/bin
cp README.md LICENSE /tmp/fdb123/opt/tribblix/ferretdb

${THOME}/build/create_pkg TRIBblix-ferretdb /tmp/fdb123

rm -fr /tmp/fdb123
