#!/bin/sh
#
env CC=gcc LDFLAGS=-m64 CFLAGS=-m64 CXXFLAGS=-m64 ${THOME}/build/dobuild leveldb-1.19
mv leveldb-1.19 leveldb-1.19-save
env CC=gcc ${THOME}/build/dobuild leveldb-1.19
mv leveldb-1.19-save leveldb-1.19-64bit
# [have to manually implement make install]
${THOME}/build/genpkg TRIBleveldb leveldb-1.19
