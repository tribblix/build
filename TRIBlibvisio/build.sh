#!/bin/sh
#
env TRIBBLIX_CFLAGS=-pthreads TRIBBLIX_CXXFLAGS=-pthreads ${THOME}/build/dobuild -64 libvisio-0.1.1 -C LIBS=-lboost_system
${THOME}/build/genpkg TRIBlibvisio libvisio-0.1.1
