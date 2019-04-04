#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
# the tarball name might not match the version number
#
${THOME}/build/dobuild repmgr-4.3.0 -C PG_CONFIG=/opt/tribblix/postgres10/bin/pg_config
${THOME}/build/genpkg TRIBblix-repmgr10 repmgr-4.3.0
