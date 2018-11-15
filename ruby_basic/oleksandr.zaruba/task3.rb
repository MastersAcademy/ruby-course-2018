# Input example: ruby yourscript.rb

array_one = []
array_two = []
p 'Enter two arrays include 5 elements'
p 'Enter first array'
5.times { array_one << gets.chomp }
p 'Enter second array'
5.times { array_two << gets.chomp }
common_array = array_one & array_two
puts "Common elements: #{common_array}"
