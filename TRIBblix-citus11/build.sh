#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
# there's a patch for
# https://github.com/citusdata/citus/issues/2679
#
${THOME}/build/dobuild citus-9.0.1 -C PG_CONFIG=/opt/tribblix/postgres11/bin/pg_config
${THOME}/build/genpkg TRIBblix-citus11 citus-9.0.1
