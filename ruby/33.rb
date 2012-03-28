# The fraction 49/98 is a curious fraction,
# as an inexperienced mathematician in attempting to simplify it may incorrectly believe that 49/98 = 4/8,
# which is correct, is obtained by cancelling the 9s.
# We shall consider fractions like, 30/50 = 3/5, to be trivial examples.
# There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.
# If the product of these four fractions is given in its lowest common terms, find the value of the denominator.
require 'set'
require 'pry'

# monkeypatch magic
class Integer
  def to_set
    return self.to_s.split(//).to_set
  end
end

answers = []
(10..99).each do |denum|
  (10..denum-1).each do |num|
    # get strings for each thing
    denum_s, num_s = denum.to_set, num.to_set
    if not (num_s.include?('0') and denum_s.include?('0')) #and denum_s.size == 1 and num_s == 1
      correct_answer = num.to_f/denum.to_f
      # remove intersections
      new_num = num_s.delete(num_s.intersection(denum_s)).first.to_i
      new_denum = denum_s.delete(num_s.intersection(denum_s)).first.to_i
      dummy = new_num.to_f/new_denum.to_f
      answers << "#{num}/#{denum} = #{correct_answer}" if dummy == correct_answer
    end
  end
end

answers.each do |line|
  puts line
end
