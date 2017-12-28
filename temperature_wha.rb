#!/usr/bin/env ruby

def convert_temp(input, input_scale: 'celsius', output_scale: 'celsius')
  return input if input_scale == output_scale
  case [input_scale.downcase, output_scale.downcase]
    when ['celsius', 'kelvin']
      return input + 273.15
    when ['kelvin', 'celsius']
      return input - 273.15
    when ['celsius', 'fahrenheit']
      return (input * 1.8) + 32
    when ['fahrenheit', 'celsius']
      return (input - 32) / 1.8
    when ['fahrenheit', 'kelvin']
      return (input + 459.67) / 1.8
    when ['kelvin', 'fahrenheit']
      return (input * 1.8) - 459.67
  end
end

puts convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin')
puts convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit')
