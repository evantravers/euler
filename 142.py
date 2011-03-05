# TODO optimize this.

import math as m
import sys

x = 2
y = 1
z = 0

def check(x, y, z):
  # test every all the perfect squares
  rootexpr = ("x + y", "x - y", "x + z", "x - z", "y + z", "y - z")
  for each in rootexpr:
    root = m.sqrt(eval(each))
    if root != int(root):
      return False
  return True

for x in xrange(1, 10000):
  for y in xrange(1, x):
    for z in xrange(1, y):
      r = check(x, y, z)
      if r:
        print x+y+z
        sys.exit
