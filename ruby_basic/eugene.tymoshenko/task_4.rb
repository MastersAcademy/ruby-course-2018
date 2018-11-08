# Скрипт приймає boolean, перетворює його в integer, в string, виводить результат та об'єм пам'яті, який кожен з результатів займає
# Input example: ruby yourscript.rb

boolean = gets.chomp.eql?('true') ? true : false
integer = boolean && 1 || 0
string = integer.to_s

puts "result of transformation: int = #{integer}, string = #{string} " +
  "memsize for: int #{integer.size}, string: #{string.bytesize}"