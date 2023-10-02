#!/bin/sh
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -64only graphviz-9.0.0 -C "--disable-dependency-tracking --enable-man-pdfs=no"
${THOME}/build/genpkg TRIBgraphviz graphviz-9.0.0
