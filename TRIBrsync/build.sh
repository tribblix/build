#!/bin/sh
#
${THOME}/build/dobuild rsync-3.2.3 -C "--disable-xxhash --disable-zstd --disable-lz4"
${THOME}/build/genpkg TRIBrsync rsync-3.2.3
