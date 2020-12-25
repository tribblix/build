#!/bin/sh
#
# slony for postgres 13
#
# the binaries are linked against postgres libraries, so this package
# installs into the same prefix as the postgres version it's built
# against, and is versioned to match
#
$THOME/build/dobuild slony1-2.2.10 -P /opt/tribblix/postgres13 -C "--with-pgconfigdir=/opt/tribblix/postgres13/bin --sysconfdir=/etc"
$THOME/build/genpkg TRIBblix-slony13 slony1-2.2.10
