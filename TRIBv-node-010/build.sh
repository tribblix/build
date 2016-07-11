#!/bin/sh
#
#
#
env CC=gcc CXX=g++ ${THOME}/build/dobuild node-v0.10.46 -P /usr/versions/node-v0.10 -C --without-dtrace
${THOME}/build/genpkg TRIBv-node-010 node-v0.10.46
