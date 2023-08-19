#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
$THOME/build/unpack timescaledb-2.11.2
cd timescaledb-2.11.2
env PATH=/opt/tribblix/postgres13/bin:$PATH PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig ./bootstrap
cd build
gmake
${THOME}/build/genpkg TRIBblix-timescaledb13
cd ../..
