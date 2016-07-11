#!/bin/sh
#
# gpa
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild gpa-0.9.9
${THOME}/build/genpkg TRIBgpa gpa-0.9.9
