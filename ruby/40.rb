# awful solution
puts 'making huuuge string'
fraction = (1..500000).to_a.collect(&:to_s).inject(:+)
puts fraction.size
puts 'made huge string'
x = 0

puts fraction[1].to_i * fraction[10].to_i * fraction[100].to_i * fraction[1000].to_i * fraction[10000].to_i * fraction[100000].to_i * fraction[1000000].to_i
