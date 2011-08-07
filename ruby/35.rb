# slightly overengineered so I can reuse the prime generator... this went through
# several iterations before it came to this one. This is less elegant than it should
# be to optimize for speed.

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

# generate all the primes
s = Sieve.new(1000000)
poss = s.primes

sum = 0
# for each prime
poss.each do |prime|
  # convert it to an array for rotations
  str = prime.to_s.chars.to_a
  bad = false
  # ignore it if it contains any even numbers, because a rotation ending in an even number will not be a prime
  next if str.include?('0') || str.include?('2') || str.include?('4') || str.include?('6') || str.include?('8')
  for i in (0..str.size)
    # check to see if the rotation is in the big list o' primes
    # this is oodles faster than my original prime checker
    # this alone took it from 59s to 6s
    if !s[str.rotate!.inject(:+).to_i]
      bad = true
      break
    end
  end
  sum += 1 unless bad
end
puts sum
