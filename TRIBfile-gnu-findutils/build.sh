#!/bin/sh
#
${THOME}/build/dobuild -gnu findutils-4.6.0 -P /usr/gnu
${THOME}/build/genpkg TRIBfile-gnu-findutils findutils-4.6.0
