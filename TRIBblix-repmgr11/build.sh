#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild repmgr-5.3.2 -C PG_CONFIG=/opt/tribblix/postgres11/bin/pg_config
${THOME}/build/genpkg TRIBblix-repmgr11 repmgr-5.3.2
