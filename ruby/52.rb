require "Set"
x = 1
limit = 6
while true
  y = x.to_s.chars.to_a.sort!
  factor = 2
  while (x * factor).to_s.chars.to_a.sort! == y and factor < limit+1
    factor += 1
    if factor == limit+1
      puts x
      exit
    end
  end
  x += 1
end
