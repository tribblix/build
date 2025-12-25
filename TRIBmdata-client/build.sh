#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# https://github.com/TritonDataCenter/mdata-client/archive/release-20230504.tar.gz
#
${THOME}/build/unpack mdata-client-release-20230504
cd mdata-client-release-20230504
gmake
cd ..
${THOME}/build/genpkg TRIBmdata-client mdata-client-release-20230504
