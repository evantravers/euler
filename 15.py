# Starting in the top left corner of a 2x2 grid, there are 6 routes (without backtracking) to the bottom right corner.
# How many routes are there through a 20x20 grid?

# choose from 40 choose 20
import math
r = math.factorial(40)/(math.factorial(20)*math.factorial(20))
print r
