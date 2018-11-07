puts 'Input the words/numbers to make an first array. Enter twice to stop :)'
array_first = []
input = gets.chomp
while
  input != ''
  array_first.push input
  input = gets.chomp
end

puts 'Input the words/numbers to make an second array. Enter twice to stop :)'
array_second = []
input = gets.chomp
while
  input != ''
  array_second.push input
  input = gets.chomp
end
array_common = array_first & array_second

puts 'Common elements of two arrays:'
puts array_common
