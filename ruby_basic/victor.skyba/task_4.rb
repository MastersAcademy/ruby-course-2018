a = gets.chomp == 'true'
puts a.class

b = a ? 1 : 0
puts b
puts b.class
puts "#{b.size} byte"

c = b.to_s
puts c
puts c.class
puts "#{c.bytesize} byte"