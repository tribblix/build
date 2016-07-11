#!/bin/sh
#
${THOME}/build/dobuild slang-2.3.0
cd slang-2.3.0
gmake
cd ..
${THOME}/build/genpkg TRIBslang slang-2.3.0
