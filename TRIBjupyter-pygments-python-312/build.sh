#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# a build from source is somewhat complex and fails on Tribblix,
# so install directly from the trivial wheel instead
#
${THOME}/build/pkg_wheel TRIBjupyter-pygments-python-312 jupyterlab_pygments-0.3.0-py3-none-any.whl
