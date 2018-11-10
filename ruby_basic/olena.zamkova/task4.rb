require 'objspace'

puts "Enter Boolean: "

str = gets.chomp.downcase

abort("Invalid input.") unless str === 'true' || str === 'false'

bool = str == 'true'

int = bool ? 1 : 0

puts "Your boolean #{str} consumes #{ObjectSpace.memsize_of(bool)} bytes; converted to integer: #{ObjectSpace.memsize_of(int)} bytes; converted to string: #{ObjectSpace.memsize_of(str)} bytes."