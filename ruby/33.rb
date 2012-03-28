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
  def uneligible?
    self.to_s.include?('0') or self.to_s.split(//)[0] == self.to_s.split(//)[1]
  end
end

answers = []
answer = 1.0
(10..99).each do |denum|
  unless denum.uneligible?
    (10..denum-1).each do |num|
      # get strings for each thing
      denum_s, num_s = denum.to_set, num.to_set
      correct_answer = num.to_f/denum.to_f
      # remove intersections
      num_s.each do |digit|
        if denum_s.include? digit
          denum_s.delete digit
          num_s.delete digit
        end
      end
      if denum_s.size == 1 and num_s.size == 1
        new_num, new_denum = num_s.first.to_i, denum_s.first.to_i
        dummy = new_num.to_f/new_denum.to_f
        if dummy == correct_answer
          answers << "#{num}/#{denum} = #{correct_answer}"
          answer = answer * correct_answer
        end
      end
    end
  end
end

answers.each do |line|
  puts line
end
# round and return the denominator
puts answer.round(2).rationalize
