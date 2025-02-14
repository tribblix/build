#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the binary package duplicates the actual functionality of the regular
# one, so 'import psycopg2' will work either way, but building and
# installing both means that pip will see both
#
env PATH=/opt/tribblix/postgres15/bin:$PATH LD_RUN_PATH=/opt/tribblix/postgres15/lib $THOME/build/pkg_setup_py TRIBpsycopg2-312 psycopg2-2.9.10 psycopg2-binary-2.9.10
