#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
import os
import re
import csv


def read_data(fname) :
    mInt = []
    for line in open(fname, 'r') :
	s = line.rstrip('\r\n')
	if '#SEC	MZ	INT' in s : continue
	if ';' in s :
		dat = s.split(';')
		mInt.append(float(dat[0]))
		mInt.append(float(dat[1]))
		mInt.append(float(dat[2]))
		mInt.append(float(dat[3]))
    return mInt

### main

mmInt = []

print '%s; ' % sys.argv[1],
for fname in sys.argv[2:] :
    mInt = read_data(fname)
    for x in mInt :
	print '%.1f; ' % (x),
