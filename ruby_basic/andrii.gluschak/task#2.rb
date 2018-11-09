require 'colorize'

p 'Enter file name'
  filename = gets.chomp
p 'Enter colour'
  colour =gets.chomp
puts File.read(filename).colorize(colour.to_sym)
