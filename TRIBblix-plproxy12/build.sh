#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild plproxy-2.9 -M "PG_CONFIG=/opt/tribblix/postgres12/bin/pg_config"
${THOME}/build/genpkg -I "install PG_CONFIG=/opt/tribblix/postgres12/bin/pg_config" TRIBblix-plproxy12 plproxy-2.9
