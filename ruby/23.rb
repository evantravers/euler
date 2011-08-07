require "set"

class Integer
  def abundant?
    result = 0
    Integer(self/2+1).downto(1) do |factor|
      if self % factor == 0
        # factors.append(factor)
        result += factor
      end
    end
    return result > self
  end
end

puts 'Finding all the abundant numbers...'

isAbundant = Set.new
result = 0

(3..28123).each do |number|
  if number.abundant?
    # print "#{number}\n"
    isAbundant.add(number)
  end
end

print "found all the abundant numbers... (#{isAbundant.size})\n"

possibilities = *(0..28123)

isAbundant.each do |factorOne|
  isAbundant.each do |factorTwo|
    result = factorOne+factorTwo
      # puts "We've decided that #{result} is not valid for our purposes #{possibilities[result]}"
      possibilities[result]=0
  end
end

# print sum of the remaining possibilities
possibilities.compact!
puts possibilities.inject(:+)
