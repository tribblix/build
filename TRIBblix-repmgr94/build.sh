#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild repmgr-4.0.4 -C PG_CONFIG=/opt/tribblix/postgres94/bin/pg_config
${THOME}/build/genpkg TRIBblix-repmgr94 repmgr-4.0.4
