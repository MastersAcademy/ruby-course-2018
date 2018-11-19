arr = ARGV
#Boolean
bool_1 = arr[0] == 'true' ? true : false
#Integer
numb = bool_1 ? 1 : 0
#String
str = arr[0].to_s

puts "String #{str} => #{str.bytesize}"
puts "Inter #{numb} => #{numb.size}"