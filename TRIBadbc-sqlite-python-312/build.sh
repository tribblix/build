#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# dependencies added for the [dbapi] extension
#
env ADBC_SQLITE_LIBRARY=/usr/lib/amd64/libadbc_driver_sqlite.so ${THOME}/build/pkg_setup_py TRIBadbc-sqlite-python-312 adbc_driver_sqlite-1.9.0
