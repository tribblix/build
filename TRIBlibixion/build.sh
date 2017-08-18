#!/bin/sh
#
env boost_cv_pthread_flag=-pthreads CFLAGS="-O -pthreads" CPPFLAGS="-pthreads" CXXFLAGS="-pthreads" ${THOME}/build/dobuild libixion-0.7.0 -M MDDS_CFLAGS=-pthreads
${THOME}/build/genpkg TRIBlibixion libixion-0.7.0
