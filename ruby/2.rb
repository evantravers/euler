def fib()
  f1 = 1
  f2 = 2
  result = 2
  while f1+f2 < 4000000
    f3 = f1+f2
    f1 = f2
    f2 = f3
    if f3 % 2 == 0
      result += f3
    end
  end
  return result
end

puts fib()
