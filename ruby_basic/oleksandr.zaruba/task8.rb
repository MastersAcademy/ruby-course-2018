# Input example: ruby yourscript.rb
array = []
p 'Enter array what include 10 elements'
10.times { array << gets.chomp }
p array.sort { |x, y| y <=> x }
