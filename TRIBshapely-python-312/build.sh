#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this depends on GEOS, but only via the C api, which is stable, so
# shapely doesn't need to rebuilt if GEOS is updated
#
${THOME}/build/pkg_pep518 -N TRIBshapely-python-312 shapely-2.1.2
