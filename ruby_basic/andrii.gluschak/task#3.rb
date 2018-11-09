  array1 = []
puts 'Enter first mass'
  array1 = gets.gsub("\n","").split(/,/)
  array2 = []
puts 'Enter second mass'
  array2 = gets.gsub("\n","").split(/,/)
  array3 = array1 & array2
puts array3
