#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# dependencies give the extras [argcomplete,aws-snapshots,cloud,lz4,zstandard]
# depend on snappy, and cramjam only on x86
# packages are available for [azure,google]
#
${THOME}/build/pkg_pep518 -N -v 313 TRIBpgbarman barman-3.20.0
