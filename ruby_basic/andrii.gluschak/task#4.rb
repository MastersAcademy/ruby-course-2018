require 'objspace'

p "================================================="
p 'enter boolean value'
  a = gets.chomp
p a
  a = a.to_s == "true"
  b = a && 1 || 0
p b
p "bool require #{ObjectSpace.memsize_of(b)} memory"
  b = b.to_s
p "string type for #{a}"
p "string require #{b.bytesize} memory"
  b = b.to_i
p "integer require #{b.size} memory"
p "================================================="
