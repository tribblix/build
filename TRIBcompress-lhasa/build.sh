#!/bin/sh
#
# lhasa, use master from github as the last release was 2016
#
${THOME}/build/dobuild -64only lhasa-master
${THOME}/build/genpkg TRIBcompress-lhasa lhasa-master

