# lychrel numbers
class Integer
  def palindrome?
    self == self.to_s.reverse.to_i
  end
end

result = 0
(1...10000).each do |num|
  lychrel = true
  t = num
  (0..50).each do
    t1 = t.to_s.reverse.to_i
    if (t + t1).palindrome?
      lychrel = false
      break
    end
    t = t1 + t
  end
  # puts "#{num} #{lychrel}"
  result += 1 if lychrel
end
puts result
