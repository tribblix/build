#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# use the system zstd
#
${THOME}/build/pkg_pep518 -N -C "--config-settings=--build-option=--system-zstd" TRIBbackports-zstd-python-312 backports_zstd-1.3.0
