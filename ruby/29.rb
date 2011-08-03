require "set"
sequence = Set.new
(2..100).each do |base|
  (2..100).each do |exp|
    sequence.add(base**exp)
  end
end

puts sequence.size
