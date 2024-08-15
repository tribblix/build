#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a combined package, as a number of the modules here
# are tightly linked
#
# this provides the [excel] extra of fava, which is why it includes
# pyexcel-ods3 and pyexcel-xlsx, and is why it doesn't include others
# such as pyexcel-xls
#
${THOME}/build/pkg_setup_py TRIBpyexcel-python-312 lml-0.1.0 pyexcel-io-0.6.6 pyexcel-0.7.0 pyexcel-ezodf-0.3.4 pyexcel-ods3-0.6.1 pyexcel-xlsx-0.6.0 
