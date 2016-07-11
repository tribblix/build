#!/bin/sh
#
# NOTE: top is build with Studio; building with gcc results in a huge
# memory leak
#
env CC=${HOME}/sunstudio12.1/bin/cc ${THOME}/build/dobuild top-3.8beta1
${THOME}/build/genpkg TRIBtop top-3.8beta1
