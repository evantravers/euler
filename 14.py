def collatz(n, x):
  if n == 1:
    return x
  if n % 2 == 0:
    return collatz((n/2), x+1)
  else:
    return collatz((3*n+1), x+1)
    
m = 0
h = 0
for x in xrange(1, 1000000):
  # print x
  t = collatz(x, 1)
  if t > m:
    m = t
    h = x
    
print "result: ", h