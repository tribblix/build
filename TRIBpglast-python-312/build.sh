#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a patch to fix up the bundled pg_config.h which is unfortunately
# static rather than dynamically generated
#
env CC=gcc PATH=/usr/gnu/bin:$PATH ${THOME}/build/pkg_setup_py TRIBpglast-python-312 pglast-7.2
