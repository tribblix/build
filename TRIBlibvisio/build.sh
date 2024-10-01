#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-pthreads TRIBBLIX_CXXFLAGS=-pthreads ${THOME}/build/dobuild -64only libvisio-0.1.7
${THOME}/build/genpkg TRIBlibvisio libvisio-0.1.7
