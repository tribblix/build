#!/bin/sh
#
# yes, it's a linux build that we start with, but
# the platform-specific component is node, which is
# replaced by the fixit script
#
${THOME}/build/pkg_tarball -T TRIBblix-kibana kibana-5.6.2-linux-x86
