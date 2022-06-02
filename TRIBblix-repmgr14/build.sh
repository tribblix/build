#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild +64only repmgr-5.3.2 -C PG_CONFIG=/opt/tribblix/postgres14/bin/pg_config
${THOME}/build/genpkg TRIBblix-repmgr14 repmgr-5.3.2
