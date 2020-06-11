#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
import os
import re
import csv
#import numpy as np
#import pandas as pd

mdat = []
ndat = 0

flag = 0

for line in sys.stdin :
	s = line.rstrip('\r\n')
	if flag==1 : print s
	if 'Signal correct' in s :
#		dat = list(csv.reader(s, delimiter=' '))
		dat = s.split(',')
#		dat = pd.read_csv(s)
		print dat
#		print float(dat[0]), float(dat[2])
		print s
		flag = 1
	if 'Ampoule removed' in s :
		flag = 0


#	m = re.findall(r'\@[a-zA-Z-]+\d\d\d\d', s)
#	m = re.findall(r'\@[a-zA-Z0-9-~+]+', s)
#	for v in m :
#		name = v[1:]
#		if name[0:6]=='Table-' :
#		    try:
#			idx = mTab.index(name)+1
#		    except ValueError:
#			nTab = nTab + 1
#			mTab.append(name)
#			idx = nTab
#		    s = s.replace(v, '%ld' % (idx) )
#		    continue
#		try:
#		    idx = mRef.index(name)+1
#		except ValueError:
#		    nRef = nRef + 1
#		    mRef.append(name)
#		    idx = nRef
#		s = s.replace(v, '[%ld](#%s)' % (idx, name) )

