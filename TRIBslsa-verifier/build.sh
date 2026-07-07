#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env GOPATH=`pwd` /usr/versions/go-1.26/bin/go install github.com/slsa-framework/slsa-verifier/v2/cli/slsa-verifier@v2.7.1

rm -fr /tmp/csa
mkdir -p /tmp/csa/usr/bin
mkdir -p /tmp/csa/usr/share/slsa-verifier
cp bin/slsa-verifier /tmp/csa/usr/bin
cp pkg/mod/github.com/slsa-framework/slsa-verifier/v2@*/README.md pkg/mod/github.com/slsa-framework/slsa-verifier/v2@*/LICENSE /tmp/csa/usr/share/slsa-verifier
${THOME}/build/create_pkg TRIBslsa-verifier /tmp/csa
rm -fr /tmp/csa
