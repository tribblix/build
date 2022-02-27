#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
git clone https://github.com/timescale/timescaledb.git
cd timescaledb
git checkout 2.6.0
env PATH=/opt/tribblix/postgres14/bin:$PATH PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig ./bootstrap
cd build
gmake
${THOME}/build/genpkg TRIBblix-timescaledb14
