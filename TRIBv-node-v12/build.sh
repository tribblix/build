#!/bin/sh
#
# 64-bit only
#
env CC=gcc CXX=g++ ${THOME}/build/dobuild node-v12.16.2 -P /usr/versions/node-v12 -C "--without-dtrace --dest-cpu=x64"
${THOME}/build/genpkg TRIBv-node-v12 node-v12.16.2
