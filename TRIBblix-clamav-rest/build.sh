#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# clamav-rest
#
# seems to not bump the jarfile version
#
git clone https://github.com/solita/clamav-rest.git
cd clamav-rest

mvn package -DskipTests

rm -fr /tmp/clr
mkdir -p /tmp/clr/opt/tribblix/clamav-rest/lib
cp target/clamav-rest-1.0.2.jar /tmp/clr/opt/tribblix/clamav-rest/lib
mkdir -p /tmp/clr/opt/tribblix/clamav-rest/doc
cp README.md LICENSE /tmp/clr/opt/tribblix/clamav-rest/doc
${THOME}/build/create_pkg TRIBblix-clamav-rest /tmp/clr

rm -fr /tmp/clr
