#!/usr/bin/env python
# $FreeBSD: security/vuxml/files/extra-validation.py 321330 2013-06-19 21:20:50Z eadler $

import datetime
import xml.etree.ElementTree as ET
import sys

tree = ET.parse('vuln.xml')
root = tree.getroot()

namespace = "{http://www.vuxml.org/apps/vuxml-1}"

ret = 0


def dateof(string):
    return datetime.datetime.strptime(string, "%Y-%m-%d")

all_vids = set()


for vuln in root:
    vid = vuln.get("vid")

    cancelled = False if vuln.find(namespace+"cancelled") is None else True
    if cancelled:
        continue

    # Validate Vids
    if vid in all_vids:
        print("Error: duplicate vid : {0}".format(vid))
    all_vids.add(vid)

    # Validate References
    references = vuln.find(namespace+"references")
    if references is None:
        print("Error: references is None : {0}".format(vid))
        ret = 1
    else:
        prev = references[0]
        for reference in references:
            if reference.tag < prev.tag:
                #print("Warn: tags out of order ({1} and {2}): {0}".format(vid, prev.tag[len(namespace):], reference.tag[len(namespace):]))
                pass
            prev = reference

    # Validate Dates
    dates = vuln.find(namespace+"dates")
    if dates is None:
        print("Error: no date : {0}".format(vid))
        ret = 1
    else:
        discovery = dates.find(namespace+"discovery")
        entry = dates.find(namespace+"entry")
        modified = dates.find(namespace+"modified")
        if discovery is None:
            print("Error: discovery is None : {0}".format(vid))
            ret = 1
        elif entry is None:
            print("Error: entry is None : {0}".format(vid))
            ret = 1
        else:
            if modified is None:
                modified = entry
            if not (dateof(discovery.text) <= dateof(entry.text) <= dateof(modified.text)):
                print("Error: dates are insane : {0}".format(vid))
                ret = 1

sys.exit(ret)
