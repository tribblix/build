#!/bin/sh
#
${THOME}/build/dobuild -64only jed-pre0.99.20-159
cd jed-pre0.99.20-159-64bit
gmake xjed
cd ..
${THOME}/build/genpkg TRIBjed jed-pre0.99.20-159
