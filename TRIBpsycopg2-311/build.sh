#!/bin/sh
#
env PATH=/opt/tribblix/postgres15/bin:$PATH LD_RUN_PATH=/opt/tribblix/postgres15/lib $THOME/build/pkg_setup_py TRIBpsycopg2-311 psycopg2-2.9.9
