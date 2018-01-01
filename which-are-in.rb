#!/usr/bin/env ruby

def in_array(array1, array2)
  result = Set.new
  array1.each do |str_piece|
    array2.each { |str_full| result.add str_piece if str_full.include? str_piece }
  end
  result.sort
end

=begin

# Much cleaner and faster solution
def in_array(array1, array2)
  array1.select{|s| array2.any?{|w| w.include?(s) } }.sort
end

=end
