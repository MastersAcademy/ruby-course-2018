array1 = []
puts 'Enter mass elements'
array1 = gets.gsub("\n","").split(/,/)
p array1.sort {|x,y| y <=> x }
