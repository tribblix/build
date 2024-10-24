#!/bin/sh
#
# slony for postgres 15
#
# the binaries are linked against postgres libraries, so this package
# installs into the same prefix as the postgres version it's built
# against, and is versioned to match
#
$THOME/build/dobuild +64only slony1-2.2.11 -P /opt/tribblix/postgres15 -C "--with-pgconfigdir=/opt/tribblix/postgres15/bin --sysconfdir=/etc"
$THOME/build/genpkg TRIBblix-slony15 slony1-2.2.11
