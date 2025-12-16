#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a pure python build, disabling the C extension
# you don't need to explicitly force it, but by doing so you avoid
# the scary errors when it tries and fails
#
env CRC32C_PURE_PYTHON=1 ${THOME}/build/pkg_pep518 -N TRIBgoogle-crc32c-python-312 google_crc32c-1.8.0
