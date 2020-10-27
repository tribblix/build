#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild plproxy-2.10.0 -M "PG_CONFIG=/opt/tribblix/postgres13/bin/pg_config"
${THOME}/build/genpkg -I "install PG_CONFIG=/opt/tribblix/postgres13/bin/pg_config" TRIBblix-plproxy13 plproxy-2.10.0
