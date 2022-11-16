#!/bin/sh
#
# entertainingly, the python module has a filename clash
# with the regular protobuf download
#
# this is a pure python build, without the C++ extensions
#
${THOME}/build/pkg_setup_py TRIBprotobuf-python-39 protobuf-4.21.9
