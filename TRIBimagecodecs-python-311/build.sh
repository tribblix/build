#!/bin/sh
#
# there's a patch:
# need to copy in a custom setup.cfg so as to skip the codecs that
# won't build due to us not having the external libraries they need
#
${THOME}/build/pkg_setup_py TRIBimagecodecs-python-311 imagecodecs-2023.9.18
