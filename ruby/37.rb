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
    # apparently 1 doesn't count
    if n == 1
      return false
    end
    @sieve.include?(n)
  end

  def primes
    # doesn't count 1
    @sieve.to_a[1..-1]
  end
end

s = Sieve.new(1000000)
primes = s.primes
(1..7).each { |v| primes.delete(v) }

solutions = []

primes.each do |prime|
  # weed out most of them
  x = 0
  bad = false
  while x < prime.to_s.size
    # check both directions at once
    unless s[prime.to_s[0+x..-1].to_i] and s[prime.to_s[0..-1-x].to_i]
      bad = true
      break
    end
    x += 1
  end
  if !bad
    solutions << prime
  end
end

puts solutions.inject(:+)
