class String
  def palindrome?
    tmp = self.split("")
    while tmp.size > 1
      if tmp[0] != tmp[-1]
        return false
      else
        tmp = tmp[1..-2]
      end
    end
    return true
  end
end

result = 0
(0..10**6).each do |number|
  if number.to_s.palindrome?
    if number.to_s(2).palindrome?
      result += number
    end
  end 
end
puts result
