#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# The build on solaris is 64-bit by default, we specify -64only so
# we don't get conflicting flags
#
# file sizes balloon if we use a bare configure/make process
#
${THOME}/build/dobuild -64only -n protobuf-3.20.1 protobuf-cpp-3.20.1
${THOME}/build/genpkg TRIBprotobuf protobuf-cpp-3.20.1
