#!/bin/sh
#
# 64-bit only
#
env CC_host="gcc -m64" CC=gcc CXX=g++ ${THOME}/build/dobuild node-v16.18.1 -P /usr/versions/node-v16 -C "--without-dtrace --dest-cpu=x64"
${THOME}/build/genpkg TRIBv-node-v16 node-v16.18.1
