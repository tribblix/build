#!/bin/sh
#
${THOME}/build/dobuild -64only abiword-3.0.5 -C "--disable-dependency-tracking --enable-clipart --enable-templates"
${THOME}/build/genpkg TRIBabiword3 abiword-3.0.5
