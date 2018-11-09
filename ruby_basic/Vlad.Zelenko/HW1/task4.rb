require 'objspace'

bool = gets.chomp
  if bool == "true" || true
    1
  else 
    0
  end

p ObjectSpace.memsize_of(bool.to_i)
p ObjectSpace.memsize_of(bool.to_s)
