#!/bin/sh
#
#  needs autoconf
#
${THOME}/build/dobuild json-c-0.12 -J 1
${THOME}/build/genpkg TRIBjson-c json-c-0.12
