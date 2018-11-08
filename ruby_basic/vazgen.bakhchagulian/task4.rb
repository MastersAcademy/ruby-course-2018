require 'objspace'

class Integer
  def to_b
    !self.zero?
  end
end

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

puts ARGV[0].to_b.to_i
puts ObjectSpace.memsize_of((1==1).to_i)
puts ARGV[0].to_b.to_s
puts ObjectSpace.memsize_of((1==1).to_s)