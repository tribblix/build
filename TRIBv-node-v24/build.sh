#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# 64-bit only
#
env CC_host="gcc -m64" CC=gcc CXX=g++ ${THOME}/build/dobuild node-v24.16.0 -P /usr/versions/node-v24 -J 6 -C "--dest-cpu=x64"
${THOME}/build/genpkg TRIBv-node-v24 node-v24.16.0
