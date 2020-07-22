#!/bin/sh
#
# note that we can't use the normal -64 build mechanism as node
# has its own way of doing it
#
env CC=gcc CXX=g++ ${THOME}/build/dobuild node-v10.22.0 -P /usr/versions/node-v10 -C "--without-dtrace --dest-cpu=x64"
${THOME}/build/genpkg TRIBv-node-v10 node-v10.22.0
