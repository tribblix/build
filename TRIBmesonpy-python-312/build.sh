#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# note that this isn't meson, it's the meson-python aka mesonpy
# module
#
# and note that MesonPy on PyPi is something completely different
#
# used by the pandas and scikit-image build
#
${THOME}/build/pkg_pep518 TRIBmesonpy-python-312 meson_python-0.19.0
