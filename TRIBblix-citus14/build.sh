#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild +64only citus-11.1.5 -C PG_CONFIG=/opt/tribblix/postgres14/bin/pg_config
${THOME}/build/genpkg TRIBblix-citus14 citus-11.1.5
