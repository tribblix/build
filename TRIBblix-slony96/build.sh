#!/bin/sh
#
# slony for postgres 9.6
#
# the binaries are linked against postgres libraries, so this package
# installs into the same prefix as the postgres version it's built
# against, and is versioned to match
#
$THOME/build/dobuild slony1-2.2.7 -P /opt/tribblix/postgres96 -C "--with-pgconfigdir=/opt/tribblix/postgres96/bin --sysconfdir=/etc"
$THOME/build/genpkg TRIBblix-slony96 slony1-2.2.7
