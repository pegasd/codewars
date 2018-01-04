#!/usr/bin/env ruby

def removNb(n)
  sum = n * (n + 1) / 2
  (1..n).map { |x| [x, (sum - x) / (x + 1)] if (sum - x) % (x + 1) == 0 }.reject { |x| x.nil? || x[1] > n }
end

p removNb(100) # []
p removNb(26) # [(15, 21), (21, 15)]
p removNb(37) # [(21,31), (31,21)]
p removNb(101) # [(55,91), (91,55)]
p removNb(100000) # []
