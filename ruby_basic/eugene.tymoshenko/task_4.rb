# Script takes a boolean, converts it into an integer, into a string, outputs the result and memory that each of the results holds.
# Input example: ruby yourscript.rb

boolean = gets.chomp.eql?('true')
integer = boolean && 1 || 0
string = boolean.to_s

puts "result of transformation: int = #{integer}, string = #{string}"
puts "memsize for: int #{integer.size}, string: #{string.bytesize}"
