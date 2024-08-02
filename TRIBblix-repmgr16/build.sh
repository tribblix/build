#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a postgres extension, so it's specific to the postgres version
#
${THOME}/build/dobuild +64only repmgr-5.4.1 -C PG_CONFIG=/opt/tribblix/postgres16/bin/pg_config
${THOME}/build/genpkg TRIBblix-repmgr16 repmgr-5.4.1
