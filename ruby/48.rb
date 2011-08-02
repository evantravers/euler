result = 0
(1..1000).each do |factor|
  result += factor**factor
end
puts result.to_s[-10..-1]
