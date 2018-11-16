# Script takes the name of text file and a string, you must find a line number of file, where specified string is first encountered.
# Input example: ruby yourscript.rb file.txt somestring

filename = gets.chomp
string = gets.chomp

f = File.open(filename)
f.each_with_index do |value, index|
  next unless value.include? string
  puts index.next
  break
end
