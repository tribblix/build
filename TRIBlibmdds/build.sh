#!/bin/sh
#
${THOME}/build/dobuild mdds_0.11.2
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/genpkg TRIBlibmdds mdds_0.11.2
