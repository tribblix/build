#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
# there are a couple of patches; citus-compat will not be needed in
# subsequent versions, but citus-stat will be
#
${THOME}/build/dobuild +64only citus-11.2.0 -C PG_CONFIG=/opt/tribblix/postgres14/bin/pg_config
${THOME}/build/genpkg TRIBblix-citus14 citus-11.2.0
