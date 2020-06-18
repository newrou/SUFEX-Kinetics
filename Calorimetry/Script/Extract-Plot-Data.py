#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
import os
import re
import csv
#import numpy as np
#import pandas as pd

mT = []
mHf = []

flag = 0

for line in sys.stdin :
	s = line.rstrip('\r\n')
	if flag==1 :
#		print s
		dat = s.split(',')
		mT.append(float(dat[0]))
		mHf.append(float(dat[2]))
	if 'Signal correct' in s :
#		dat = list(csv.reader(s, delimiter=' '))
#		dat = pd.read_csv(s)
#		print dat
		dat = s.split(',')
		mT.append(float(dat[0]))
		mHf.append(float(dat[2]))
#		print float(dat[0]), float(dat[2])
#		print s
		flag = 1
	if 'Ampoule removed' in s :
		dat = s.split(',')
		mT.append(float(dat[0]))
		mHf.append(float(dat[2]))
		flag = 0

minHf = min(mHf)

print('Time, s; Heat flow, Watt')
for i in range(len(mT)) :
	print('%.11f; %.14e' % (mT[i], mHf[i]-minHf ))

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

