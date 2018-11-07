=begin
#This variant if you need to set the dimension of the array

puts "Hi enter the words/numbers of which we will make an array."

array = Array.new

10.times do
  str = gets.chomp
  array.push str
  array.sort.reverse
end
puts "Sotring result:"
print array
=end

puts "Input the words/numbers to make an array. Enter twice to stop :)"

array = [ ]
input = gets.chomp
while
  input != ''
  array.push input
  input = gets.chomp
end
puts "defsescending sorted array:"
print array.sort.reverse
