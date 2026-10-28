#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there are a lot of possible dependencies, but all are in extras
#
# use a wheel build to avoid the uv-build dependency which isn't
# available on sparc
#
${THOME}/build/pkg_wheel TRIBnarwhals-python-313 narwhals-2.28.0-py3-none-any.whl
