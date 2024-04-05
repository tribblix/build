#!/bin/sh
#
# 64-bit only
#
env CC_host="gcc -m64" CC=gcc CXX=g++ ${THOME}/build/dobuild node-v20.12.1 -P /usr/versions/node-v20 -J 6 -C "--dest-cpu=x64"
${THOME}/build/genpkg TRIBv-node-v20 node-v20.12.1
