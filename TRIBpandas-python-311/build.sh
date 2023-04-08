#!/bin/sh
#
# optional dependencies - [*] means we already have it
#
# performance: numexpr,bottleneck,numba
# plot: matplotlib
# output_formatting[*]: jinja2[*],tabulate[*]
# computation: scipy[*],xarray
# excel: xlrd,xlsxwriter,openpyxl,pyxlsb
# html: BeautifulSoup4,html5lib,lxml
# xml: lxml
# databases: SQLAlchemy,psycopg2[*],pymysql
#
# a pep518 build requires --no-build-isolation otherwise it tries
# to build its own numpy, which would fail as it doesn't have the
# modifications we need to make it build successfully
#
${THOME}/build/unpack pandas-2.0.0
cd pandas-2.0.0
/usr/versions/python-3.11/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.11/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpandas-python-311 /tmp/pil
cd ..
rm -fr /tmp/pil
