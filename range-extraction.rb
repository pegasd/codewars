#!/usr/bin/env ruby

def solution(list)
  result        = []
  current_stack = []

  list.each_with_index do |current_num, index|
    current_stack.push(current_num)

    next if list[index + 1] and list[index + 1] == current_num + 1

    if current_stack.length >= 3
      result.push "#{current_stack.first}-#{current_stack.last}"
    else
      result.push current_stack.join(',')
    end
    current_stack = []
  end

  result.join(',')
end

puts solution([-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20])
