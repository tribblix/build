#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# package both libansilove and ansilove together
# first time through, just package libansilove
#
# _XPG7 for strndup()
#
env TRIBBLIX_CFLAGS=-D_XPG7 ${THOME}/build/cmbuild -64only libansilove-1.4.2
env TRIBBLIX_CFLAGS=-D__EXTENSIONS__ ${THOME}/build/cmbuild -64only ansilove-4.2.2
${THOME}/build/genpkg TRIBansilove libansilove-1.4.2 ansilove-4.2.2
