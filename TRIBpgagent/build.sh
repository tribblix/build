#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this installs an extension to the specified postgres, so manually
# add a dependency on this postgres version
#
# -pthreads so boost picks up threading correctly
#
env PATH=/opt/tribblix/postgres15/bin:$PATH TRIBBLIX_CXXFLAGS=-pthreads $THOME/build/cmbuild -64only pgagent-pgagent-4.2.2
${THOME}/build/genpkg TRIBpgagent pgagent-pgagent-4.2.2
