#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# it really does depend on libaudiofile, it's linked in using the full
# pathname which might not get picked up
#
${THOME}/build/dobuild +64 libspectrum-1.5.0
${THOME}/build/genpkg TRIBlibspectrum libspectrum-1.5.0
