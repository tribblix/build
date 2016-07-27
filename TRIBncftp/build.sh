#!/bin/sh
#
# you may have to rename the download
# mv ncftp-3.2.5-src.tar.bz2 ncftp-3.2.5.tar.bz2
#
${THOME}/build/dobuild ncftp-3.2.5
${THOME}/build/genpkg TRIBncftp ncftp-3.2.5
