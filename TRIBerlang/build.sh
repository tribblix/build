#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# for testing only; seeing a number of failures in the test suite
#
# current RabbitMQ needs 25 minimum, but supports 26
#
# you need both our flags and the erlang 64-bit flag
#
# the DED_LD stuff is because erlang "knows" that you need to link
# with -64 on solaris, but passing -64 to gcc doesn't work
#
env DED_LD="ld" DED_LDFLAGS="-m64 -G" DED_LD_FLAG_RUNTIME_LIBRARY_PATH="-R" \
${THOME}/build/dobuild -64only otp_src_26.2.5.11 -C --enable-m64-build
#
# [tests:
# cd otp_src_26.2.5.11-64bit
# env ERL_TOP=`pwd` gmake release_tests
# env ERL_TOP=`pwd` sh 'cd release/tests/test_server; $ERL_TOP/bin/erl -s ts install -s ts smoke_test batch -s init stop'
# ls -l `pwd`/release/tests/test_server/index.html
# cd ..
# ]
#
env DED_LD="ld" DED_LDFLAGS="-m64 -G" DED_LD_FLAG_RUNTIME_LIBRARY_PATH="-R" \
${THOME}/build/genpkg TRIBerlang otp_src_26.2.5.11
