#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# depends on jerasure, but it's dlopen()ed
#
env TRIBBLIX_CFLAGS=-D__EXTENSIONS__ $THOME/build/dobuild -64only -A https://opendev.org/openstack/liberasurecode
${THOME}/build/genpkg TRIBliberasurecode liberasurecode
