#!/bin/sh
#
# 64-bit only
#
env CC_host="gcc -m64" CC=gcc CXX=g++ ${THOME}/build/dobuild node-v18.13.0 -P /usr/versions/node-v18 -C "--without-dtrace --dest-cpu=x64"
${THOME}/build/genpkg TRIBv-node-v18 node-v18.13.0
