require 'Set'
def tri n
  n*(n+1)/2
end

def pent n
  n*(3*n-1)/2
end

def hex n
  n*(2*n-1)
end

puts "generating sets"
trias = Set.new
pents = Set.new
hexs  = Set.new
(0...100000).each do |num|
  trias.add(tri(num))
  pents.add(pent(num))
  hexs.add(hex(num))
end
solution = (trias&pents&hexs).to_a
puts solution[solution.index(40755)+1]
