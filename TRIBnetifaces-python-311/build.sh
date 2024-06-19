#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a patch to help find getifaddrs
#
env CC="gcc -m64" ${THOME}/build/pkg_setup_py TRIBnetifaces-python-311 netifaces-0.11.0
