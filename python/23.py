# problem 23
# find the sum of the all positive integers which cannot be written as the sum of two abundant numbers

def abundant(num):
  """this function will find the proper divisors of a number"""
  factors = []
  result = 0
  for factor in reversed(range(1, int(num/2)+1)):
    if num % factor == 0:
      factors.append(factor)
  for each in factors: result+=each
  return result > num
    
print("find all the abundant numbers...")

isAbundant = []
result = 0
# find all the abundant numbers under 28123
for each in range(1, 28124):
  result += each
  if abundant(each):
    isAbundant.append(each)

print("found all the abundant numbers...")

# TODO make this not broken
counter = 1
for number in isAbundant:
  # lets see which ones it could be
  # if it's abundant to start with, ignore it.
  for possibility in isAbundant[counter:]:
    index = number - possibility
    if index < 28124:
      result-=isAbundant[counter]
  counter+=1
print(result)
