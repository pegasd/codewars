#!/usr/bin/env ruby

def score(dice)
  result = 0
  1.upto(6) do |x|
    if x == 1
      result += 1000 if dice.count(x) >= 3
      result += 100 * (dice.count(x) % 3)
    else
      result += 100 * x if dice.count(x) >= 3
      result += 50 * (dice.count(x) % 3) if x == 5
    end
  end
  result
end

p score( [2, 3, 4, 6, 2] )
p score( [2, 2, 2, 3, 3] )
p score( [2, 4, 4, 5, 4] )
p score( [1, 1, 1, 1, 3] )
