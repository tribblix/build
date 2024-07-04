#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# use the ceph copy, as the original appears to have gone awol
#
${THOME}/build/dobuild -64only -A https://github.com/ceph/jerasure
${THOME}/build/genpkg TRIBjerasure jerasure
