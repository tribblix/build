#!/bin/sh
#
# the backends are soft requirements, I add those we actually need (AWS)
# and those we already have packages for.
# paramiko (enables ssh) boto3 (enables S3)
# other optional packages it can leverage that aren't listed as dependencies
# rsync rclone ncftp
#
${THOME}/build/unpack duplicity-0.8.12.1618
cd duplicity-0.8.12.1618
env PATH=/usr/gnu/bin:$PATH /usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
env PATH=/usr/gnu/bin:$PATH /usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBduplicity-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
