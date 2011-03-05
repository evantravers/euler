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

