import math
def prime_factors(num):
    if num == 1: return[num]
    powers = []
    limit = (num/2)+1
    i = 2
    if isPrime(num): return [num]
    while i <= limit:
        while num % i == 0:
            powers.append(i)
            num = num/i
        i += 1
        if num == 1: break
    return powers
    
def isPrime(num):
  if type(num) != int: return False
  if num == 2: return True
  if num < 2 or num % 2 == 0: return False
  return not any(num % i == 0 for i in range(3, int(math.sqrt(num))+1, 2))

from operator import mul

triangle_num = 3 # starting place: 1+2=3
max_factors = 2
to_add = 2

while max_factors <= 500:
    to_add += 1
    triangle_num += to_add
    factors = prime_factors(triangle_num)
    count = []
    while len(factors) != 0:
        count.append(factors.count(factors[0])) # how many of the first factor
        print count
        del factors[:count[-1]] # take out all instances of first factor
    # count is now a list of how many of each factor
    # e.g. for 28 = 2*2*7, count = [2,1]
    # number of all factors is then given by (2+1)*(1+1) because each factor
    # will have the form (2**x)*(7**y) where x = 0 or 1 or 2, y = 0 or 1
    not_just_prime_factors = reduce(mul, [count[i]+1
                                          for i in range(len(count))])
    max_factors = max(not_just_prime_factors, max_factors)

print triangle_num
print max_factors

