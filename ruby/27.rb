class Sieve
  require 'set'
  attr_reader :sieve
  @sieve
  def initialize(n, testing=false)
    # implementation of my python code
    puts "Generating primes from 1 to #{n}!"
    @sieve = (0..n).to_set
    (2..(n**0.5)+1).each do |num|
      (2..n/num).each do |divisor|
        @sieve.delete(num*divisor)
      end
    end
    puts "...done!"
  end

  def[] n
    @sieve.include?(n)
  end

  def primes
    # doesn't count 1
    @sieve.to_a[1..-1]
  end
end

s = Sieve.new(1000000)
primes = s.primes

def quadratic (n, a, b)
  n**2 + a*n + b
end

consec = 0
record = -1
result = 0
(-1000..1000).each do |a|
  (-1000..1000).each do |b|
    consec = 0
    n = 0
    while s[quadratic(n, a, b)]
      consec +=1
      n += 1
    end
    if consec > record
      # puts "New record! (#{consec}) from #{a} and #{b}"
      record = consec
      result = a * b
      break
    end
  end
end
puts result
