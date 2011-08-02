# permutation problem
def permu(current, remaining):
  """ permu takes a current set, and the remaining values, and calls itself on the remaining values. """
  if not remaining:
    return current
  for each in remaining:
    permu(current + str(each), remaining.remove(each))

print(permu("", [0, 1, 2]))
