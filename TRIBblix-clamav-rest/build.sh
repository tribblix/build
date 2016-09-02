#!/bin/sh
#
# clamav-rest
#
# needs openjdk7, maven errors with openjdk8
#
git clone https://github.com/solita/clamav-rest.git
cd clamav-rest
#
# the package includes Spring Boot 1.1.6, which is old and doesn't
# allow ssl to be configured for jetty, and has an old version of jetty
# so we update to something current
#
gsed -i -e s:1.1.6:1.4.0: -e s:1.0.0:1.0.1: pom.xml
#
# for the tests, it wants to connect to a running version of itself,
# which won't work until it's built, so skip
#
env PATH=/usr/versions/openjdk1.7.0_79/bin:$PATH mvn package -DskipTests

rm -fr /tmp/clr
mkdir -p /tmp/clr/opt/tribblix/clamav-rest/lib
cp target/clamav-rest-1.0.1.jar /tmp/clr/opt/tribblix/clamav-rest/lib
mkdir -p /tmp/clr/opt/tribblix/clamav-rest/doc
cp README.md LICENSE /tmp/clr/opt/tribblix/clamav-rest/doc
${THOME}/build/create_pkg TRIBblix-clamav-rest /tmp/clr

rm -fr /tmp/clr
