#!/bin/sh
#
# needs boehm-gc and help2man
#
# 2.6 was rewritten in vala, stick to older versions
#
${THOME}/build/dobuild -64only zile-2.4.15
${THOME}/build/genpkg TRIBzile zile-2.4.15
