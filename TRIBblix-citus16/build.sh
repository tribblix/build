#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a postgres extension, so it's specific to the postgres version
#
# there is a citus-stat patch
#
${THOME}/build/dobuild +64only citus-12.1.3 -C PG_CONFIG=/opt/tribblix/postgres16/bin/pg_config
${THOME}/build/genpkg TRIBblix-citus16 citus-12.1.3
