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
  print x
  for y in xrange(1, x):
    for z in xrange( 1, y):
      result = check(x, y, z)
      if result:
        print (x+y+z)
        sys.exit