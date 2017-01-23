#!/bin/sh
#
# rename the tarball
#  mv fossil-1.37.tar.gz Fossil_2017-01-16_205854_1669115ab9.tar.gz
#
${THOME}/build/dobuild Fossil_2017-01-16_205854_1669115ab9
${THOME}/build/genpkg TRIBfossil Fossil_2017-01-16_205854_1669115ab9
