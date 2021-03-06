#!/bin/sh
#
# $FreeBSD: mail/exim/files/150.exim-tidydb.sh 307267 2012-11-10 10:01:20Z rea $
#
# Exim hints database maintenance
# 
#   contributed by: Oliver Eikemeier <eikemeier@fillmore-labs.com>
#

# If there is a global system configuration file, suck it in.
#
if [ -r /etc/defaults/periodic.conf ]; then
    . /etc/defaults/periodic.conf
    source_periodic_confs
fi

: ${exim_tidydb_enable="YES"}
: ${exim_tidydb="%%PREFIX%%/sbin/exim_tidydb"}
# Set this to arbitrary shell command to filter
# the output from this periodic script, for example,
# exim_tidydb_filter="| tail -100".
: ${exim_tidydb_filter=""}
: ${exim_dbdir="/var/spool/exim"}

tidy () {
	for db in "$exim_dbdir"/db/*.lockfile; do
	    [ "$db" = "$exim_dbdir/db/*.lockfile" ] && continue
	    echo
	    db_name=`basename "$db" .lockfile`
	    if [ -e "${exim_dbdir}/db/${db_name}" ]; then
	        "$exim_tidydb" "$exim_dbdir" "$db_name"
	    fi
	done
}

case "$exim_tidydb_enable" in
    [Yy][Ee][Ss])
	echo ""
	echo "Tidying Exim hints databases:"
	eval tidy "$exim_tidydb_filter"
	rc=1;;

    *)  rc=0;;
esac

exit $rc
