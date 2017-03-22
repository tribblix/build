#!/bin/sh
#
# with isaexec switching
#
# note that we can't use the normal -64 build mechanism as node
# has its own way of doing it
#
env CC=gcc CXX=g++ ${THOME}/build/dobuild node-v7.7.4 -P /usr/versions/node-v7 -C --without-dtrace
mv node-v7.7.4 node-v7.7.4-32
env CC=gcc CXX=g++ ${THOME}/build/dobuild node-v7.7.4 -P /usr/versions/node-v7 -C "--without-dtrace --dest-cpu=x64"
${THOME}/build/genpkg TRIBv-node-v7 node-v7.7.4
