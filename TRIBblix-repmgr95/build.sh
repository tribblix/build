#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild repmgr-4.0.5 -C PG_CONFIG=/opt/tribblix/postgres95/bin/pg_config
${THOME}/build/genpkg TRIBblix-repmgr95 repmgr-4.0.5
