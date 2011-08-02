def abundant(num)
  result = 0
  Integer(num/2+1).downto(1) do |factor|
    if num % factor == 0
      # factors.append(factor)
      result += factor
    end
  end
  return result > num
end

puts 'Finding all the abundant numbers...'

isAbundant = []
result = 0

(1..28123).each do |number|
  if abundant(number)
    isAbundant << number
  end
end

print "found all the abundant numbers... (#{isAbundant.size})\n"

possibilities = *(1..28123)

isAbundant.each do |factorOne|
  isAbundant.each do |factorTwo|
    if factorOne+factorTwo+1 < 28123
      possibilities[factorOne+factorTwo+1]=0
    end
  end
end

# print sum of the remaining possibilities
puts possibilities.inject(:+)
