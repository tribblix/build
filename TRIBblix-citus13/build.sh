#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild citus-9.5.1 -C PG_CONFIG=/opt/tribblix/postgres13/bin/pg_config
${THOME}/build/genpkg TRIBblix-citus13 citus-9.5.1
