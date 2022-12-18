#!/bin/sh
#
# slony for postgres 14
#
# the binaries are linked against postgres libraries, so this package
# installs into the same prefix as the postgres version it's built
# against, and is versioned to match
#
$THOME/build/dobuild +64only slony1-2.2.11 -P /opt/tribblix/postgres14 -C "--with-pgconfigdir=/opt/tribblix/postgres14/bin --sysconfdir=/etc"
$THOME/build/genpkg TRIBblix-slony14 slony1-2.2.11
