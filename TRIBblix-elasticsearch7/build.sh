#!/bin/sh
#
# this is incompatible with having other versions of elasticsearch
# installed
#
# also needs a copy of the jna distribution - see the fixit script
#
${THOME}/build/pkg_tarball -T TRIBblix-elasticsearch7 elasticsearch-oss-7.6.2-no-jdk-linux-x86_64
