#!/bin/sh
#
${THOME}/build/dobuild ruby-1.9.3-p551 -P /usr/versions/ruby-1.9.3 -C ac_cv_func_dl_iterate_phdr=no
${THOME}/build/genpkg TRIBv-ruby-193 ruby-1.9.3-p551
