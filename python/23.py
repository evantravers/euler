# problem 23
# find the sum of the all positive integers which cannot be written as the sum of two abundant numbers

isAbundant = []
for each in xrange(0, 28124):
	# check and see if it's abundant
	if each % 2 == 0:
		isAbundant.append(True)
	else:
		isAbundant.append(False)

