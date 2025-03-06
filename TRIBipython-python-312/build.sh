#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# ipython-pygments-lexers used to be included in IPython, now spun out,
# but package together
#
# ipython build uses setuptool, ipython-pygments-lexers uses flit-core
#
${THOME}/build/pkg_pep518 -N TRIBipython-python-312 ipython-9.0.1 ipython_pygments_lexers-1.1.1
