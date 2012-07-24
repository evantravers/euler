require 'pry'
require 'set'

Options = [200, 100, 50, 20, 10, 5, 2, 1]
@total_ways = Set.new

class Array
  def sum
    self.inject(:+)
  end
end

# list is the current position
# start is the point after which it has to search
def evaluate list, start
  in_hand = list
  in_hand << Options[start]
  if in_hand.sum == 200
    @total_ways << in_hand.sort!
    evaluate(list, start+1)
  else
    evaluate(in_hand, start)
  end
end

evaluate(Array.new, 0)

puts @total_ways.size
