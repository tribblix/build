#!/bin/sh
#
# needs readline installed
#
env LD_RUN_PATH=/usr/gnu/lib ${THOME}/build/dobuild abook-0.5.6 -C "--with-readline=/usr/gnu"
${THOME}/build/genpkg TRIBabook abook-0.5.6
