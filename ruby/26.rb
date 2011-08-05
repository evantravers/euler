# I'm operating under the assumption that the 
# longest repeater will be a prime
(1..1000).each do |num|
  puts "1/#{num} = #{1/num.to_f}"
end
