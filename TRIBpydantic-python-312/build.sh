#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# build together, as they're joined at the hip and version locked
# (note that pydantic_core may need to be slightly downrev to match)
#
${THOME}/build/pkg_pep518 TRIBpydantic-python-312 pydantic_core-2.23.4 pydantic-2.9.2
