#!/bin/sh
#
# slony for postgres 12
#
# the binaries are linked against postgres libraries, so this package
# installs into the same prefix as the postgres version it's built
# against, and is versioned to match
#
$THOME/build/dobuild slony1-2.2.8 -P /opt/tribblix/postgres12 -C "--with-pgconfigdir=/opt/tribblix/postgres12/bin --sysconfdir=/etc"
$THOME/build/genpkg TRIBblix-slony12 slony1-2.2.8
