#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the "150" in the name originally meant "version 1.5.0" but should now
# be interpreted as "version 1.5.x"
#
# get the fixit script to do all the work
#
# note that the jfreechart URLs lead to the source, the binary jar we
# need to package is best obtained from maven at
# https://central.sonatype.com/artifact/org.jfree/jfreechart/versions
#
${THOME}/build/genpkg TRIBjfreechart-150
