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

  def isCircPrime?
    str = self.to_s.split("")
    for i in (0..self.size+1)
      if not str.rotate!.inject(:+).to_i.is_prime?
        return false
      end
    end
    return true
  end
end

sum = 0
(0..10**6).each do |num|
  puts "#{num} :: #{sum}"
  if num.isCircPrime?
    sum += 1
  end
end
