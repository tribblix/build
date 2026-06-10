#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is actually nest-asyncio, a fork of the seemingly unmaintained
# nest-aysncio, but ipykernel is the only consumer in Tribblix and it
# switched dependency
#
${THOME}/build/pkg_pep518 -N TRIBnest-asyncio-python-313 nest_asyncio2-1.7.2
