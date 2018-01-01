#!/usr/bin/ruby

#MORSE_CODE_LETTERS = %w[
#  .- -... -.-. -.. . ..-. --. .... .. .--- -.- .-..
#  -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --..
#]

#MORSE_CODE_NUMBERS = %w[----- .---- ..--- ...-- ....- ..... -.... --... ---.. ----.]

#MORSE_CODE = {}
#('A'..'Z').to_a.each_with_index { |char, i| MORSE_CODE[MORSE_CODE_LETTERS[i]] = char }
#(0..9).to_a.each { |num| MORSE_CODE[MORSE_CODE_NUMBERS[num]] = num }

#require 'yaml'
#puts MORSE_CODE.to_yaml

def decodeMorse(morseCode)
  morseCode.split(/ /).map do |x|
    if MORSE_CODE.key? x
      MORSE_CODE[x]
    else
      ' '
    end
  end.join().gsub('  ', ' ').strip
end
