#!/bin/sh
#
# 64-bit only
#
env CC=gcc CXX=g++ ${THOME}/build/dobuild node-v14.13.1 -P /usr/versions/node-v14 -C "--without-dtrace --dest-cpu=x64"
${THOME}/build/genpkg TRIBv-node-v14 node-v14.13.1
