#!/bin/sh
#
# this is a pure python build, disabling the C extension
# you don't need to explicitly force it, but by doing so you avoid
# the scary errors when it tries and fails
#
env CRC32C_PURE_PYTHON=1 ${THOME}/build/pkg_setup_py TRIBgoogle-crc32c-python-312 google-crc32c-1.5.0
