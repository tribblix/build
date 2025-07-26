#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xapian-core-1.4.29
${THOME}/build/genpkg TRIBxapian-core xapian-core-1.4.29
