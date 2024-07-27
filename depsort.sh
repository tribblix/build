#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# {{{ CDDL HEADER
#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#
# }}}
#
# Copyright 2024 Peter Tribble
#

LC_COLLATE=C
export LC_COLLATE

#
# check depend files are sorted for all packages
#
cd $THOME/build
for file in */depend */depend.*
do
    if ! /usr/bin/sort -c $file 2>/dev/null
    then
	echo "sort -o $file $file"
    fi
done

#
# same policy for build_require
#
cd $THOME/build
for file in */build_require */build_require.*
do
    if ! /usr/bin/sort -c $file 2>/dev/null
    then
	echo "sort -o $file $file"
    fi
done
