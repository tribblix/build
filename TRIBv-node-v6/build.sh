#!/bin/sh
#
# with isaexec switching
#
# note that we can't use the normal -64 build mechanism as node
# has its own way of doing it
#
env CC=gcc CXX=g++ ${THOME}/build/dobuild node-v6.11.2 -P /usr/versions/node-v6 -C --without-dtrace
mv node-v6.11.2 node-v6.11.2-32
env CC=gcc CXX=g++ ${THOME}/build/dobuild node-v6.11.2 -P /usr/versions/node-v6 -C "--without-dtrace --dest-cpu=x64"
${THOME}/build/genpkg TRIBv-node-v6 node-v6.11.2
