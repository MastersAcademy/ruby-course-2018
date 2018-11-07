require 'objspace'

class FalseClass
  def to_i
    0
  end
end

class TrueClass
  def to_i
    1
  end
end

puts (1==1).to_i
puts ObjectSpace.memsize_of((1==1).to_i)
puts (1==1).to_s
puts ObjectSpace.memsize_of((1==1).to_s)