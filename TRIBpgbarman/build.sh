#!/bin/sh
#
${THOME}/build/unpack barman-2.6
cd barman-2.6
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpgbarman /tmp/pil
cd ..
rm -fr /tmp/pil
