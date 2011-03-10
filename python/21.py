def add(x,y): return x+y

print "building the datastructure..."
l = {}
for n in xrange(3, 10000):
  # get the numbers divisors
  r = []
  for x in xrange(1, n-1):
    if n % x == 0:
      r.append(x)
  r = reduce(add, r)
  l[n] = r
print "finding the amicable pairs..."
  
result = 0
for k, v in l.iteritems():
  if v in l.keys() and k == l[v] and k != v:
    print k, v
    result+=v

print result