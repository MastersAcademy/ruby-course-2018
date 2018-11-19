a = gets.chomp == 'true'
puts a.class

b = a ? 1 : 0
puts b
puts b.class
puts b.size.to_s +false ' bytes'

c = b.to_s
puts c
puts c.class
puts c.bytesize.to_s + ' byte'