require 'set'
# build the hash for the values
values = {}
'a'.upto('z').each { |v| values[v] = values.size+1 }

# read in words.txt, trim out all the indices and put them in order
arr = Array
file = File.open('words.txt','r') do |f1|
  while line = f1.gets
    arr = line.split(/\",\"/).collect(&:downcase)
    arr[0] = arr[0][1..-1]
    arr[-1] = arr[-1][0..-2]
  end 
end

# definition of triangle numbers
def triangle(n)
  (0.5*n*(n+1)).to_i
end

# lets build a set of triangle numbers!
tri = Set.new
(0..1000).each do |num|
  tri.add(triangle(num))
end

result = 0
arr.each do |word|
  sum = 0
  word.each_char do |char|
    sum += values[char]
  end
  if tri.include?(sum)
    result +=1
  end
end

puts result
