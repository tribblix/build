#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild +64only repmgr-5.3.0 -C PG_CONFIG=/opt/tribblix/postgres13/bin/pg_config
${THOME}/build/genpkg TRIBblix-repmgr13 repmgr-5.3.0
