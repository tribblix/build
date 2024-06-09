#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -64only graphviz-11.0.0 -C "--disable-dependency-tracking --enable-man-pdfs=no"
${THOME}/build/genpkg TRIBgraphviz graphviz-11.0.0
