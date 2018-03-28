#!/bin/sh
#
# with isaexec switching
#
# note that we can't use the normal -64 build mechanism as node
# has its own way of doing it
#
env CC=gcc CXX=g++ ${THOME}/build/dobuild node-v9.10.0 -P /usr/versions/node-v9 -C --without-dtrace
mv node-v9.10.0 node-v9.10.0-32
env CC=gcc CXX=g++ ${THOME}/build/dobuild node-v9.10.0 -P /usr/versions/node-v9 -C "--without-dtrace --dest-cpu=x64"
${THOME}/build/genpkg TRIBv-node-v9 node-v9.10.0
