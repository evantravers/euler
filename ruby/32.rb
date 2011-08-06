require "set"

(1..1000).each do |a|
  (1..1000).each do |b|
    solutions = Set[(1..9).to_a]
    str = a.to_s + b.to_s + (a*b).to_s
