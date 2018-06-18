#!/bin/sh
#
${THOME}/build/unpack psycopg2-2.7.5
cd psycopg2-2.7.5
env PATH=/opt/tribblix/postgres96/bin:$PATH LD_RUN_PATH=/opt/tribblix/postgres96/lib python setup.py build
rm -fr /tmp/pil
env PATH=/opt/tribblix/postgres96/bin:$PATH LD_RUN_PATH=/opt/tribblix/postgres96/lib python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpsycopg2-27 /tmp/pil
cd ..
rm -fr /tmp/pil
