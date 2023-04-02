#!/bin/sh
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -64only graphviz-8.0.1
${THOME}/build/genpkg TRIBgraphviz graphviz-8.0.1
