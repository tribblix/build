#!/bin/sh
#
# note that it declares setup-scm as a runtime dependency, so we do too
#
# the backends are soft requirements, the dependencies declared here
# are a basic subset, the overlay can add additional packages
# which may vary by platform, but we add boto3 as it's the default
#
# other optional packages it can leverage that aren't listed as dependencies
# rsync rclone ncftp
# paramiko *or* pexpect for ssh
# requests is used by multiple backends
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/pkg_setup_py TRIBduplicity-python-311 duplicity-2.2.3
