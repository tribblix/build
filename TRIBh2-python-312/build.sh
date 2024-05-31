#!/bin/sh
#
# ship these 3 together to avoid exploding the number of packages
# hpack and hyperframe are used by h2, and all some from the same
# main project
#
${THOME}/build/pkg_setup_py TRIBh2-python-312 hpack-4.0.0 hyperframe-6.0.1 h2-4.1.0
