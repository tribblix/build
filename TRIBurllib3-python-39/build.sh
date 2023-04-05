#!/bin/sh
#
# the dependencies around [secure] will need looking at
# we still declare them, but urllib3 shouldn't use them
# see https://github.com/urllib3/urllib3/issues/2680
#
${THOME}/build/pkg_setup_py TRIBurllib3-python-39 urllib3-1.26.15
