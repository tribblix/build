#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# dependencies added for the [dbapi] extension
#
env ADBC_POSTGRESQL_LIBRARY=/usr/lib/amd64/libadbc_driver_postgresql.so ${THOME}/build/pkg_pep518 -N TRIBadbc-postgresql-python-312 adbc_driver_postgresql-1.10.0
