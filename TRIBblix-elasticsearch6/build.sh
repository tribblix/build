#!/bin/sh
#
# this is incompatible with having other versions of elasticsearch
# installed
#
# also needs a copy of the jna distribution - see the fixit script
#
${THOME}/build/pkg_tarball -T TRIBblix-elasticsearch6 elasticsearch-6.8.6
