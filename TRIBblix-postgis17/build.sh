#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# postgis for postgres 17
#
# the binaries are linked against postgres libraries, so this package
# installs into the same prefix as the postgres version it's built
# against, and is versioned to match
#
$THOME/build/dobuild +64only postgis-3.5.3 -P /opt/tribblix/postgres17 -C "--with-pgconfig=/opt/tribblix/postgres17/bin/pg_config --sysconfdir=/etc"
$THOME/build/genpkg TRIBblix-postgis17 postgis-3.5.3
