#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to set CC as qv_deanimate doesn't pick the flags up properly
#
env CC="gcc -m64" TRIBBLIX_CXXFLAGS=-Wno-narrowing TRIBBLIX_LDFLAGS=-lXpm ${THOME}/build/dobuild -64only qvwm-1.1.12-10-IKu
${THOME}/build/genpkg TRIBqvwm qvwm-1.1.12-10-IKu
