#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is really psycopg3, but the module is just called psycopg
#
# we ship the optional components providing the [c] and [pool] extras,
# as they're really all tied together
#
# unfortunately we can't build the [binary] extra from source, it's
# just a binary download from pypi and illumos isn't provided, but the
# [c] extra, aka "local installation", should be equivalent
#
env PATH=/opt/tribblix/postgres15/bin:$PATH LD_RUN_PATH=/opt/tribblix/postgres15/lib $THOME/build/pkg_setup_py TRIBpsycopg-312 psycopg-3.2.3 psycopg_pool-3.2.3 psycopg_c-3.2.3
