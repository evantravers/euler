# this solution is pretty awful. Really bad brute force.
class Integer
  def factorial
    if self != 0
      self.downto(1).inject(:*)
    else
      0
    end
  end

  def facfactorial
    # split to array of integers
    tmp = self.to_s.split("").map(&:to_i)
    result = 0
    tmp.each do |t|
      result += t.factorial
    end
    result
  end
end

result = 0
(3..10**10).each do |number|
  if number == number.facfactorial
    puts number
    result += number
  end
end

puts result
