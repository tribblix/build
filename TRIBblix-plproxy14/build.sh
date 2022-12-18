#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild +64only plproxy-2.10.0 -M "PG_CONFIG=/opt/tribblix/postgres14/bin/pg_config"
${THOME}/build/genpkg -I "install PG_CONFIG=/opt/tribblix/postgres14/bin/pg_config" TRIBblix-plproxy14 plproxy-2.10.0
