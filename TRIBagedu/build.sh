#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_LDFLAGS=-lsocket $THOME/build/cmbuild -64only agedu-20241013.3622eda
${THOME}/build/genpkg TRIBagedu agedu-20241013.3622eda
