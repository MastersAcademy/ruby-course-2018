a = true
puts a.class

if a == true
  a = 1
else
  a = 0
end
puts a
puts a.class
puts a.size.to_s + ' bytes'

a = a.to_s
puts a
puts a.class
puts a.bytesize.to_s + ' byte'