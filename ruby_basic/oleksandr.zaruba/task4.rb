# Input example: ruby yourscript.rb 

p 'input boolean true or false'

input_value = gets.chomp

if input_value == 'true'
  input_value = true
elsif input_value == 'false'
  input_value = false
end

puts "input class is: #{input_value.class}"

input_value_int = input_value ? 1 : 0

p "convert boolean: #{p input_value} to integer: #{input_value_int}"

p "Size of integer type  #{input_value_int.size.to_s} bite"

input_value = input_value.to_s

p "Size of string tipe: #{input_value.bytesize.to_s} bite"
