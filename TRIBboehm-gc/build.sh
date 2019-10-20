#!/bin/sh
#
# (nb symlink from the gc-7.2e tarball)
# (pkg version is 7.2.5==7.2e)
#
${THOME}/build/dobuild -64 gc-7.2
${THOME}/build/genpkg TRIBboehm-gc gc-7.2
