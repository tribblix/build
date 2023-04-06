#!/bin/sh
#
env PKG_CONFIG_PATH=/usr/lib/`${THOME}/build/getarch`/pkgconfig ${THOME}/build/pkg_setup_py TRIBborg-python-311 borgbackup-1.2.4
