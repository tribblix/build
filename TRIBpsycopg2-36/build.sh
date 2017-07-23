#!/bin/sh
#
${THOME}/build/unpack psycopg2-2.7.2
cd psycopg2-2.7.2
env PATH=/opt/tribblix/postgres96/bin:$PATH LD_RUN_PATH=/opt/tribblix/postgres96/lib /usr/versions/python-3.6/bin/python3 setup.py build
rm -fr /tmp/pil
env PATH=/opt/tribblix/postgres96/bin:$PATH LD_RUN_PATH=/opt/tribblix/postgres96/lib /usr/versions/python-3.6/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpsycopg2-36 /tmp/pil
cd ..
rm -fr /tmp/pil
