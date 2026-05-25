#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xapian-bindings-1.4.31 -C --without-ruby
${THOME}/build/genpkg TRIBxapian-bindings xapian-bindings-1.4.31
