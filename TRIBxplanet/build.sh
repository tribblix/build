#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to build from trunk, create a tarball like so:
# svn checkout https://svn.code.sf.net/p/xplanet/code/trunk xplanet-code
# tar czf ${THOME}/tarballs/xplanet-code.tar.gz xplanet-code
#
# hits an autoconf version mismatch, so regenerate with -A
#
env TRIBBLIX_CXXFLAGS=-fpermissive ${THOME}/build/dobuild -A -64only xplanet-code
${THOME}/build/genpkg TRIBxplanet xplanet-code
