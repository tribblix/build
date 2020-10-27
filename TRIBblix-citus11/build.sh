#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild citus-9.4.2 -C PG_CONFIG=/opt/tribblix/postgres11/bin/pg_config
${THOME}/build/genpkg TRIBblix-citus11 citus-9.4.2
