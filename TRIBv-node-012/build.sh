#!/bin/sh
#
# as of Tribblix 0m17 we don't need to patch in libproc.h
#
env CC=gcc CXX=g++ ${THOME}/build/dobuild node-v0.12.17 -P /usr/versions/node-v0.12 -C --without-dtrace
${THOME}/build/genpkg TRIBv-node-012 node-v0.12.17
