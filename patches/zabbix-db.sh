#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a generic wrapper for managing the zabbix database back-end
#
# if the database does not exist, it will initialize it and insert
# the appropriate data
#
# if the database does exist, it will be started
#
# initial version: just postgres
#
ZDIR="/opt/tribblix/zabbix"
ZDBSCRIPT="${ZDIR}/scripts/zabbix-db.sh"
ZDBDIR="${ZDIR}/db"
DBUSER="zabbixdb"
PGDIR="/opt/tribblix/postgres15"

#
# if the script doesn't exist, just exit
#
if [ ! -x $ZDBSCRIPT ]; then
    exit 0
fi

usage() {
    echo "Usage: $0 start|stop"
    exit 0
}

init_db() {
    ${PGDIR}/bin/initdb -E UTF8 -D ${ZDBDIR}
    sync
    sleep 1
    start_db
    sleep 10
    ${PGDIR}/bin/psql -d template1 -c "create user zabbix;"
    ${PGDIR}/bin/psql -d template1 -c "create database zabbix owner zabbix;"
    ${PGDIR}/bin/psql -d zabbix -U zabbix < ${ZDIR}/scripts/postgresql/schema.sql
    ${PGDIR}/bin/psql -d zabbix -U zabbix < ${ZDIR}/scripts/postgresql/images.sql
    ${PGDIR}/bin/psql -d zabbix -U zabbix < ${ZDIR}/scripts/postgresql/data.sql
}

start_db() {
  ${PGDIR}/bin/pg_ctl -w -D ${ZDBDIR} start
}

stop_db() {
  ${PGDIR}/bin/pg_ctl -w -D ${ZDBDIR} stop
}

case $# in
    1)
	printf ""
	;;
    *)
	usage
	;;
esac

#
# the regular start and stop rerun this script as the db user
#
case $1 in
    'start')
	/bin/chown zabbixdb:zabbixdb $ZDBDIR
	/bin/chmod 0700 $ZDBDIR
	su - $DBUSER -c "$ZDBSCRIPT do_start"
	;;
    'stop')
	su - $DBUSER -c "$ZDBSCRIPT do_stop"
	;;
    'do_start')
	if [ -f ${ZDBDIR}/postgresql.conf ]; then
	    echo "Starting zabbix database"
	    start_db
	else
	    echo "Creating and starting zabbix database"
	    init_db
	fi
	;;
    'do_stop')
	echo "Stopping zabbix database"
	stop_db
	;;
    *)
	usage
	;;
esac
