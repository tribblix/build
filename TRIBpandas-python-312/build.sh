#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# optional dependencies - [*] means we already have it
#
# performance: numexpr,bottleneck,numba
# plot[*]: matplotlib[*]
# output-formatting[*]: jinja2[*],tabulate[*]
# computation[*]: scipy[*],xarray[*]
# fss[*]: fsspec[*]
# excel[*]: odfpy[*],xlrd[*],xlsxwriter[*],openpyxl[*],pyxlsb[*],calamine
# html[*]: BeautifulSoup4[*],html5lib[*],lxml[*]
# xml[*]: lxml[*]
# compression[*]: zstandard[*]
# postgresql[*]: SQLAlchemy[*],psycopg2[*],adbc-driver-postgresql[*]
# mysql[*]: SQLAlchemy[*],pymysql[*]
# sql-other[*]: SQLAlchemy[*],adbc-driver-postgresql[*],adbc-driver-sqlite[*]
# pyarrow[*],feather[*],parquet[*]: pyarrow[*]
#
# note that calamine requires rust
#
# a pep518 build requires -N == --no-build-isolation otherwise it tries
# to build its own numpy, which would fail as it doesn't have the
# modifications we need to make it build successfully
#
# but that also means that we have to have all the modules that pip
# needs installed ahead of time, see build_require
#
# PATH so it can find the cython executable
# Need to pass -m64 down to meson
#
env LDFLAGS=-m64 CXXFLAGS=-m64 CFLAGS=-m64 PATH=/usr/versions/python-3.12/bin:$PATH ${THOME}/build/pkg_pep518 -N TRIBpandas-python-312 pandas-2.3.2
