#!/bin/sh
#
${THOME}/build/dobuild -64only bison-3.7.4 -C --disable-yacc
${THOME}/build/genpkg TRIBbison bison-3.7.4
