#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# by default, it will find clang if it's installed
# while not a problem, force gcc for consistency
#
env CC=gcc ${THOME}/build/dobuild -64only -n ncftp-3.2.7 ncftp-3.2.7-src
${THOME}/build/genpkg TRIBncftp ncftp-3.2.7-src
