#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
import os
import re
import csv
#import numpy as np
#import pandas as pd


def read_data(mT, mHf, fname) :
    for line in open(fname, 'r') :
	s = line.rstrip('\r\n')
	if 'Time, s; Heat flow, Watt' in s : continue
	if '; ' in s :
		dat = s.split(';')
		mT.append(float(dat[0]))
		mHf.append(float(dat[1]))
    return mT, mHf


def average_f(a, b, mT, mHf) :
    Hf = 0.0
    n = 0
    for i in range(len(mT)) :
	x = mT[i]
	if x>a and x<b :
	    Hf = Hf + mHf[i]
	    n = n + 1
    if n>0 : return Hf/n
    return 0

### main

mT = []
mHf = []

for fname in sys.argv[1:] :
#    print fname
    mt, mHf = read_data(mT, mHf, fname)

nT = len(mT)
minT = min(mT)
maxT = max(mT)
dT = maxT - minT

#print 'n=%d  tmin=%.1f  tmax=%.1f  dt=%.1f' % (nT, minT, maxT, dT)

n = nT/30
ddt = dT/n

print('Time, s; Heat flow, Watt')
for i in range(n) :
    t = minT + i*ddt + ddt/2
#    print '%.1f - %.1f - %.1f' % (t-ddt/2, t, t+ddt/2)
    Hf = average_f(t-ddt/2, t+ddt/2, mT, mHf)
#    print Hf
    if not Hf==0 : print('%.11f; %.14e' % (t, Hf ))


#print('Time, s; Heat flow, Watt')
#for i in range(len(mt)) :
#	print('%.11f; %.14e' % (mt[i], mHf[i] ))


#print('Time, s; Heat flow, Watt')
#for i in range(len(mt)) :
#	print('%.11f; %.14e' % (mt[i], mHf[i] ))
