# theory: that each successive circle is the sum of 4 numbers which are related somehow
result = 1
x = 1
(1..500).each do |circle|
  (1..4).each do |corner|
    x+= (2*circle)
    result += x
  end
end

puts result
