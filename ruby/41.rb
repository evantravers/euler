require "set"

class Integer
  def is_prime?
    # ("1" * self) !~ /^1?$|^(11+?)\1+$/
    if (self % 2 == 0) & (self != 2) & (not (self % 6 == ( 1 | 5)))
      return false
    end
    (3..self/2).each do |num|
      if self % num == 0
        return false
      end
    end
    return true
  end
end

def pandigital n
  # is this number pandigital?
  # pandigital numbers of length n have all the integers from 1 to n
  # only once

  length = n.to_s.size
  question = n.to_s.chars.to_set
  # puts "the set: #{question.length} length: #{length}"
  if question.size != length
    return false
  end

  answer = Set[*"1".upto(length.to_s)]
  if answer != question
    return false
  end
  return true
end

# largest possible pandigital #
goal = 123456789
while true
  goal = goal.to_s[0..-2].to_i
  goal.to_s.chars.to_a.permutation.sort.reverse.each do |pan|
    pan1 = pan.inject(:+).to_i
    if pan1.is_prime?
      puts pan1
      exit
    end
  end
end
