#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the binary package duplicates the actual functionality of the regular
# one, so 'import psycopg2' will work either way, but building and
# installing both means that pip will see both
#
# note that python already links with -R (for ncurses) so will ignore
# LD_RUN_PATH, hence LDFLAGS so it can find libpq at runtime
#
env LDFLAGS=-R/opt/tribblix/postgres17/lib PATH=/opt/tribblix/postgres17/bin:$PATH $THOME/build/pkg_setup_py TRIBpsycopg2-312 psycopg2-2.9.11 psycopg2-binary-2.9.11
