# By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

# 3
# 7 4
# 2 4 6
# 8 5 9 3

# That is, 3 + 7 + 4 + 9 = 23.

# Find the maximum total from top to bottom of the triangle below:

# The first problem is how to know what is next to each other.
# for any given a[x][y] his decendants are a[x+1][y] and a[x+1][y+1]
# for any given a[x][y] his parents are a[x-1][y-1] and a[x-1][y]

a =                           [[75],
                            [95, 64],
                          [17, 47, 82],
                        [18, 35, 87, 10],
                      [20, 4, 82, 47, 65],
                    [19, 1, 23, 75, 3, 34],
                  [88, 2, 77, 73, 7, 63, 67],
                [99, 65, 4, 28, 6, 16, 70, 92],
            [41, 41, 26, 56, 83, 40, 80, 70, 33],
          [41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
        [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
      [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
    [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
  [63, 66, 4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
[04, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 4, 23]]

# test info here.
b = [[3], [7, 4], [2, 4, 6], [8, 5, 9, 3]]

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