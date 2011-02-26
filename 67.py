# read in the data
# there must be a better way to do this.
a = []
FILE = open("67.txt")
for line in FILE:
  b = line.strip().split(" ")
  c = []
  for x in xrange(0, len(b)):
    c.append(int(b[x]))
  a.append(list(c))
  
# same method as problem 18.
def findPath(n):
  total = 0
  # where n is a 2d jagged array representing the triangle
  height = len(n)-1
  # lets assume we should solve from the bottom up. For each cell in the current row, consider it's maximum value considering the one below. Carry this all the way to the top to win.
  
  # for every row bottom up
  for x in reversed(range(0, len(n)-1)):
    # go through every cell in that row
    for y in range(0, len(n[x])):
      # each cells new value is the max of it's decendants down the tree
      n[x][y] += max(n[x+1][y:y+2])

  return n[0][0]
  
print(findPath(a))