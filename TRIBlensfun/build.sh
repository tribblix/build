#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there are python pieces, although we don't declare a dependency
# these are installed manually - see fixit and fixinstall - as the
# cmake build installs a deprecated egg and puts it in the wrong place
#
${THOME}/build/cmbuild -64only lensfun-0.3.4 -C -DBUILD_LENSTOOL=ON
${THOME}/build/genpkg TRIBlensfun lensfun-0.3.4
