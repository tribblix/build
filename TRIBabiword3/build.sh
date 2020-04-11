#!/bin/sh
#
${THOME}/build/dobuild abiword-3.0.4 -C "--disable-dependency-tracking --enable-clipart --enable-templates"
${THOME}/build/genpkg TRIBabiword3 abiword-3.0.4
