#!/bin/sh
#
${THOME}/build/dobuild +64only -gnu diffutils-3.8 -P /usr/gnu
${THOME}/build/genpkg TRIBtext-gnu-diffutils diffutils-3.8
