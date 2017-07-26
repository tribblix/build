#!/bin/sh
#
${THOME}/build/dobuild jed-pre0.99.20-128
cd jed-pre0.99.20-128
gmake xjed
cd ..
${THOME}/build/genpkg TRIBjed jed-pre0.99.20-128
