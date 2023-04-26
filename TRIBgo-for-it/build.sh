#!/bin/sh
#
# needs vala
#
${THOME}/build/cmbuild -64only -gnu https://github.com/JMoerman/Go-For-It
${THOME}/build/genpkg TRIBgo-for-it Go-For-It
