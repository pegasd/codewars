#!/usr/bin/env ruby

@output_debug = env.FETCH('DEBUG_LEVEL', false)

require 'set'

def distance_between_points(point_one, point_two)
  side_one = (point_one[0] - point_two[0]) ** 2
  side_two = (point_one[1] - point_two[1]) ** 2
  Math.sqrt(side_one + side_two)
end

def find_combinations(cats)
  cats.each_with_index do |_, index|
    cats.each_with_index do |_, internal_index|
      puts "Checking cat: #{cats[index]}, #{cats[internal_index]}"
      yield(cats[index], cats[internal_index]) unless index.eql? internal_index
    end
  end
end

def peaceful_yard(yard, min_distance)
  cats = []
  yard.each_with_index do |line, x|
    line.chars.each_with_index do |char, y|
      unless char.eql? '-'
        puts "Pushing cat #{x}, #{y} onto the catstack..."
        cats.push([x, y])
      end
    end
  end
  find_combinations(cats) do |point_one, point_two|
    if distance_between_points(point_one, point_two) < min_distance
      puts "#{point_one}, #{point_two} got caght in a #{min_distance}"
      return false
    end
  end
  true
end

puts peaceful_yard(["------------", "------------", "-L----------", "------------", "------------", "------------"], 10) # true

puts peaceful_yard(["------------", "---M--------", "------------", "------------", "-------R----", "------------"], 6)
puts peaceful_yard(["-----------L", "--R---------", "------------", "------------", "------------", "--M---------"], 4)

