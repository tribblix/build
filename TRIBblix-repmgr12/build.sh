#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild repmgr-5.3.0 -C PG_CONFIG=/opt/tribblix/postgres12/bin/pg_config
${THOME}/build/genpkg TRIBblix-repmgr12 repmgr-5.3.0
