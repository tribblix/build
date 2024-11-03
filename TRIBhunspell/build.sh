#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CXXFLAGS=-fpermissive ${THOME}/build/dobuild -64only hunspell-1.7.2 -C "--disable-static"
${THOME}/build/genpkg TRIBhunspell hunspell-1.7.2
