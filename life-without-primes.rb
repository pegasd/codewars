#!/usr/bin/env ruby

require 'prime'

def solve(n)
  current = 0
  num = 1
  until current == n
    num += 1
    num += 1 while num.prime?
    num += 1 while num.to_s =~ /[2357]/
    current += 1
  end
  num
end

puts solve(10) # 44
puts solve(50) # 169
puts solve(100) # 644
puts solve(150) # 896
puts solve(200) # 1060
puts solve(300) # 1668
puts solve(400) # 4084
puts solve(500) # 4681
puts solve(1000) # 9110
puts solve(2000) # 18118
puts solve(3000) # 46166
