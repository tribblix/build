#!/bin/sh
#
# the backends are soft requirements, I add those we actually need (AWS)
# and those we already have packages for.
# paramiko (enables ssh) boto3 (enables S3)
# other optional packages it can leverage that aren't listed as dependencies
# rsync rclone ncftp
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/pkg_setup_py TRIBduplicity-python-39 duplicity-1.2.1
