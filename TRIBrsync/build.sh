#!/bin/sh
#
${THOME}/build/dobuild -64only rsync-3.2.5pre2 -C "--disable-xxhash"
${THOME}/build/genpkg TRIBrsync rsync-3.2.5pre2
