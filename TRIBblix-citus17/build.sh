#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a postgres extension, so it's specific to the postgres version
#
# there is a citus-stat patch
#
${THOME}/build/dobuild +64only citus-13.1.0 -C PG_CONFIG=/opt/tribblix/postgres17/bin/pg_config
${THOME}/build/genpkg TRIBblix-citus17 citus-13.1.0
