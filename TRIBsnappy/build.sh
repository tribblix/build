#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the old library needs to be built with the old ABI for compatibility
# this can be droped if snappy is updated, as that will require all
# consumers to be rebuilt in any case
#
env TRIBBLIX_CXXFLAGS=-D_GLIBCXX_USE_CXX11_ABI=0 ${THOME}/build/dobuild +64 snappy-1.1.3
${THOME}/build/genpkg TRIBsnappy snappy-1.1.3
