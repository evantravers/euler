# I wrote this at school, where I apparently don't have access to import math, so I wrote my own. Worked just fine.

def factorial(n):
	r = 1
	for x in xrange(1, n):

		r*=x
	return r

l = str(factorial(100))
print l
r=0
for digit in l:
	r+=int(digit)

print r
