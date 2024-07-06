#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a postgres extension, so it's specific to the postgres version
#
env PATH=/opt/tribblix/postgres16/bin:$PATH ${THOME}/build/dobuild +64only wal2json-wal2json_2_6
env PATH=/opt/tribblix/postgres16/bin:$PATH ${THOME}/build/genpkg TRIBblix-wal2json16 wal2json-wal2json_2_6
