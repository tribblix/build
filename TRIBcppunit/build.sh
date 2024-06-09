#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# updates bump the SONAME
#
# need to build the old version using the old ABI for compatibility
#
env TRIBBLIX_CXXFLAGS=-D_GLIBCXX_USE_CXX11_ABI=0 ${THOME}/build/dobuild +64 cppunit-1.13.2
${THOME}/build/genpkg TRIBcppunit cppunit-1.13.2
