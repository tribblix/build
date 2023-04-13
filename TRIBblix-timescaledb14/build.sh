#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
$THOME/build/unpack timescaledb-2.10.1
cd timescaledb-2.10.1
env PATH=/opt/tribblix/postgres14/bin:$PATH PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig ./bootstrap
cd build
gmake
${THOME}/build/genpkg TRIBblix-timescaledb14
cd ../..
