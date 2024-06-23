#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only hdf5-hdf5_1.14.4.3 -C CC=gcc
${THOME}/build/genpkg TRIBhdf5 hdf5-hdf5_1.14.4.3
