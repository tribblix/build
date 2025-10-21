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
# note that python already links with -R (for ncurses) so will ignore
# LD_RUN_PATH, hence LDFLAGS so it can find libpq at runtime
#
env LDFLAGS=-R/opt/tribblix/postgres17/lib PATH=/opt/tribblix/postgres17/bin:$PATH $THOME/build/pkg_pep518 -N TRIBpsycopg-312 psycopg-3.2.11 psycopg_pool-3.2.6 psycopg_c-3.2.11
