#!/bin/sh
#
# this is a postgres extension, so it's specific to the postgres version
#
# requires groonga (obviously) and msgpack-c
#
${THOME}/build/dobuild pgroonga-2.2.7 -M "PG_CONFIG=/opt/tribblix/postgres13/bin/pg_config HAVE_MSGPACK=1"
${THOME}/build/genpkg -I "install PG_CONFIG=/opt/tribblix/postgres13/bin/pg_config HAVE_MSGPACK=1" TRIBblix-pgroonga13 pgroonga-2.2.7
