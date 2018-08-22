#!/bin/sh
#
# slony for postgres 10
#
# the binaries are linked against postgres libraries, so this package
# installs into the same prefix as the postgres version it's built
# against, and is versioned to match
#
$THOME/build/dobuild slony1-2.2.7 -P /opt/tribblix/postgres10 -C "--with-pgconfigdir=/opt/tribblix/postgres10/bin --sysconfdir=/etc"
$THOME/build/genpkg TRIBblix-slony10 slony1-2.2.7
