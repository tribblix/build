#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# on x86 we add orjson as a dependency, but substitute that with ujson
# on sparc, as orjson needs rust
#
${THOME}/build/pkg_pep518 -N TRIBglances-python-313 glances-4.5.9
