#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# postgis for postgres 16
#
# the binaries are linked against postgres libraries, so this package
# installs into the same prefix as the postgres version it's built
# against, and is versioned to match
#
$THOME/build/dobuild +64only postgis-3.4.2 -P /opt/tribblix/postgres16 -C "--with-pgconfig=/opt/tribblix/postgres16/bin/pg_config --sysconfdir=/etc"
$THOME/build/genpkg TRIBblix-postgis16 postgis-3.4.2
