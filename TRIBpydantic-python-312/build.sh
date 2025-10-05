#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# build together, as they're joined at the hip and version locked
# note that pydantic needs an *exact* version of pydantic_core
#
${THOME}/build/pkg_pep518 -N TRIBpydantic-python-312 pydantic_core-2.33.2 pydantic-2.11.10
