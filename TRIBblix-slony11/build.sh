#!/bin/sh
#
# slony for postgres 11
#
# the binaries are linked against postgres libraries, so this package
# installs into the same prefix as the postgres version it's built
# against, and is versioned to match
#
$THOME/build/dobuild slony1-2.2.7 -P /opt/tribblix/postgres11 -C "--with-pgconfigdir=/opt/tribblix/postgres11/bin --sysconfdir=/etc"
$THOME/build/genpkg TRIBblix-slony11 slony1-2.2.7
