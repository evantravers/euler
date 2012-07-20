require 'pry'
require 'set'

Options = [200, 100, 50, 20, 10, 5, 2, 1]
@total_ways = Set.new

class Array
  def sum
    self.inject(:+)
  end
end

def evaluate total, start
  if total.sum == 200
    @total_ways << total.sort!
  else
    for coin in Options[start, 8]
      if (total.sum + coin) == 200
        sub_total = total.dup
        @total_ways << (sub_total << coin).sort!
        evaluate total, start+1
      elsif total.sum + coin < 200
        evaluate (total << coin), start
      end
    end
  end
end

i = 0
for each in Options
  total = Array.new
  total = [each]
  evaluate total, i
  i += 1
end
for each in @total_ways
  puts each.to_s
end
puts "---------"
puts @total_ways.size
