#!/bin/sh
#
# there's a little transitional guesswork here, as it needs to find
# 64-bit versions of python/perl/ruby/tcl by default
#
${THOME}/build/dobuild -64only xapian-bindings-1.4.25
${THOME}/build/genpkg TRIBxapian-bindings xapian-bindings-1.4.25
