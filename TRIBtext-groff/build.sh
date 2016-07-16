#!/bin/sh
#
${THOME}/build/dobuild -gnu groff-1.22.3 -P /usr/gnu
${THOME}/build/genpkg TRIBtext-groff groff-1.22.3
