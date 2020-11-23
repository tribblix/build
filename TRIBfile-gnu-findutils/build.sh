#!/bin/sh
#
${THOME}/build/dobuild +64only -gnu findutils-4.7.0 -P /usr/gnu
${THOME}/build/genpkg TRIBfile-gnu-findutils findutils-4.7.0
