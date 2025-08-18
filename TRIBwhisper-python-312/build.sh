#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is whisper, the time series database part of Graphite
#
# note that whisper installs into the standard python layout
#
# note also that we use the latest source, as the versions on PyPI
# are very old, the g0 in the package version reflects that
#
${THOME}/build/pkg_setup_py TRIBwhisper-python-312 https://github.com/graphite-project/whisper
