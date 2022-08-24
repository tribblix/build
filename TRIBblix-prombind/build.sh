#!/bin/tcsh
#

$THOME/build/unpack bind_exporter-0.5.0
cd bind_exporter-0.5.0

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

${THOME}/build/genpkg TRIBblix-prombind
