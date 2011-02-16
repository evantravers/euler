FILE = open("13.txt")
sum = 0
for line in FILE:
  sum+= int(line.strip())
print str(sum)[:10]