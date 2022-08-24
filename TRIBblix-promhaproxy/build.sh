#!/bin/sh
#

$THOME/build/unpack haproxy_exporter-0.13.0
cd haproxy_exporter-0.13.0

#
# we need to build the promu tool first, as otherwise the main build
# tries to download it which fails as there isn't a prebuilt one
# for solaris
#
git clone https://github.com/prometheus/promu.git
cd promu
gmake build
cd ..

gmake build
cd ..

${THOME}/build/genpkg TRIBblix-promhaproxy
