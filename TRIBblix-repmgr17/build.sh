#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild +64only repmgr-5.5.0 -C PG_CONFIG=/opt/tribblix/postgres17/bin/pg_config
${THOME}/build/genpkg TRIBblix-repmgr17 repmgr-5.5.0