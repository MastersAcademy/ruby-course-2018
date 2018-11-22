# Task 6
require './extmodule'
require './string'

class Maths
  include Extmodule

  def initialize(a, b)
    @a = a
    @b = b
  end

  OPERATORS.each do |method_name, operator|
    define_method method_name do
      colour = COLOURS[method_name.to_sym]
      rezult = @a.send(operator, @b)
      rezult.to_s.send(colour.to_sym)
    end
  end
end

puts Maths.new(9, 47).plus
puts Maths.new(-2, 140).minus
puts Maths.new(9, 47).divide
puts Maths.new(-2, 140).multiply