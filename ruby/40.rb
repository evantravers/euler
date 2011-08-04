counter = 0
num = 0
targets = [1, 10, 100, 1000, 10000, 100000, 1000000]
solutions = []
until targets.empty?
  num.to_s.chars.each do |char|
    if targets.include?(counter)
      targets.delete(counter)
      puts "found a char! #{char}"
      solutions << char.to_i
    end 
    counter += 1
  end
  num += 1
end
puts solutions.inject(:*)
