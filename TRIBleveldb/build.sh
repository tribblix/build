#!/bin/sh
#
${THOME}/build/dobuild -64 leveldb-1.18
# [have to manually implement make install]
${THOME}/build/genpkg TRIBleveldb leveldb-1.18
