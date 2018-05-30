#!/bin/sh
#
# required by bhyve
#
# postconf to put acsolaris.h, which is pulled from the omnios build
#
env CC=gcc M4=gm4 PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -M iasl acpica-unix-20180508
${THOME}/build/genpkg TRIBdev-acpi-compiler acpica-unix-20180508
