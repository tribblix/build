#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# build together, as they're joined at the hip and version locked
# note that pydantic needs an *exact* version of pydantic_core
#
${THOME}/build/pkg_pep518 -N TRIBpydantic-python-313 pydantic_core-2.46.4 pydantic-2.13.4
