#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack PPIx-QuoteLike-0.023
cd PPIx-QuoteLike-0.023
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-ppix-quotelike PPIx-QuoteLike-0.023
