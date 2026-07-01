#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# not available on sparc due to jdk21 requirement
#
# note also that 10.1 matches ruby 4.0, whereas 10.0 matches ruby 3.4
# which is closer to our existing ruby support
#
${THOME}/build/pkg_tarball TRIBv-jruby-10 jruby-dist-10.0.6.0-bin
