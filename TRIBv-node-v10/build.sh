#!/bin/sh
#
# with isaexec switching
#
# note that we can't use the normal -64 build mechanism as node
# has its own way of doing it
#
env CC=gcc CXX=g++ ${THOME}/build/dobuild node-v10.4.1 -P /usr/versions/node-v10 -C --without-dtrace
mv node-v10.4.1 node-v10.4.1-32
env CC=gcc CXX=g++ ${THOME}/build/dobuild node-v10.4.1 -P /usr/versions/node-v10 -C "--without-dtrace --dest-cpu=x64"
${THOME}/build/genpkg TRIBv-node-v10 node-v10.4.1
