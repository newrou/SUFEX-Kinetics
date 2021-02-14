#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
import os
import re
import csv
#import numpy as np
#import pandas as pd


def read_data(fname) :
    mT = []
    mHf = []
    for line in open(fname, 'r') :
	s = line.rstrip('\r\n')
	if 'Time, s; Heat flow, Watt' in s : continue
	if '; ' in s :
		dat = s.split(';')
		mT.append(float(dat[0]))
		mHf.append(float(dat[1]))
    return mT, mHf

def find_near(t1, Hf1, mt, mHf) :
    d = abs(mt[0]-t1)
    r = mHf[0]
    rt = mt[0]
    for t, Hf in zip(mt, mHf) :
	dt = abs(t-t1)
	if dt < d :
	    d = dt
	    r = Hf
	    rt = t
    if d < 1000.0 : return rt, r
    else : return None, None

mt1, mHf1 = read_data(sys.argv[1])
mt2, mHf2 = read_data(sys.argv[2])

#print mt2, mHf2

mt = []
mHf = []

for t1, Hf1 in zip(mt1, mHf1) :
#    print t1, Hf1
    t2, Hf2 = find_near(t1, Hf1, mt2, mHf2)
#    print '  *** ', t2, Hf2
    if not t2 is None :
#	print '  add ', t2, Hf2
	mt.append((t1+t2)/2)
	mHf.append((Hf1+Hf2)/2)

print('Time, s; Heat flow, Watt')
for i in range(len(mt)) :
	print('%.11f; %.14e' % (mt[i], mHf[i] ))
