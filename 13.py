FILE = open("nums.txt")
sum = 0
for line in FILE:
  sum+= int(line.strip())
print sum