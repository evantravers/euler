import math
import operator

# problem 23
# find the sum of the all positive integers which cannot be written as the sum of two abundant numbers

def abundant(num):
	"""this function will find the proper divisors of a number"""
	factors = []
	for factor in reversed(xrange(1, num)):
		if num % factor == 0:
				factors.append(factor)
	return reduce( operator.add, factors) > num 
		
isAbundant = []
for each in xrange(2, 28124):
	if each % 100 == 0:
		print each
	# check and see if it's abundant
	# abundant means that it's proper divisors added together exceeds the number itself
	isAbundant.append(abundant(each))

print isAbundant
