total = 0
(2..1000000).each do |option|
  tmp = option.to_s.split("")
  result = 0
  tmp.each do |place|
    result += place.to_i**5
  end
  if result == option
    total += option
  end
end
puts total
