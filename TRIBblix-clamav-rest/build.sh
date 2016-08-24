#!/bin/sh
#
# clamav-rest
#
# needs openjdk7, maven errors with openjdk8
#
git clone https://github.com/solita/clamav-rest.git
cd clamav-rest
#
# for the tests, it wants to connect to a running version of itself,
# which won't work until it's built, so skip
#
env PATH=/usr/versions/openjdk1.7.0_79/bin:$PATH mvn package -DskipTests

rm -fr /tmp/clr
mkdir -p /tmp/clr/opt/tribblix/clamav-rest/lib
cp target/clamav-rest-1.0.0.jar /tmp/clr/opt/tribblix/clamav-rest/lib
mkdir -p /tmp/clr/opt/tribblix/clamav-rest/doc
cp README.md LICENSE /tmp/clr/opt/tribblix/clamav-rest/doc
${THOME}/build/create_pkg TRIBblix-clamav-rest /tmp/clr

rm -fr /tmp/clr
