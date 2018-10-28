#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
# the tarball name doesn't match the version number
# mv repmgr-4.2.tar.gz repmgr-4.2.0.tar.gz
#
${THOME}/build/dobuild repmgr-4.2.0 -C PG_CONFIG=/opt/tribblix/postgres10/bin/pg_config
${THOME}/build/genpkg TRIBblix-repmgr10 repmgr-4.2.0
