#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# This is a fork of the archived and unmaintained original which was
# at https://github.com/google/gumbo-parser
#
# note that claws requires 0.12+, so the original won't work
#
# note that the file path in the downloaded tarball don't include the
# version number
#
${THOME}/build/dobuild -64only gumbo-parser
${THOME}/build/genpkg TRIBlibgumbo gumbo-parser
