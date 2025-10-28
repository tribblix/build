#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# must use -N, as it uses uv-build which needs patching to build
#
${THOME}/build/pkg_pep518 -N TRIBannotated-doc-python-312 annotated_doc-0.0.3
