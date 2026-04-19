#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild +64only citus-14.0.0 -C PG_CONFIG=/opt/tribblix/postgres18/bin/pg_config
${THOME}/build/genpkg TRIBblix-citus18 citus-14.0.0
