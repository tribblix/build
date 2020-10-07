#!/bin/sh
#
# just can't handle LD_OPTIONS
# disable -fstack-protector otherwise miniruby fails to link with
# multiply defined symbols
#
${THOME}/build/dobuild ruby-2.7.2 -P /usr/versions/ruby-2.7 -C "ac_cv_func_dl_iterate_phdr=no stack_protector=no" -L
${THOME}/build/genpkg TRIBv-ruby-27 ruby-2.7.2
