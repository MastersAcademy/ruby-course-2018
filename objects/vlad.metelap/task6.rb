# Task 6
require './extmodule'
class String

  def black
    "\e[30m#{self}\e[0m"
  end

  def red
    "\e[31m#{self}\e[0m"
  end

  def green
    "\e[32m#{self}\e[0m"
  end

  def brown
    "\e[33m#{self}\e[0m"
  end

  def blue
    "\e[34m#{self}\e[0m"
  end

end

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
      # "\e[#{colour}m#{rezult}\e[0m"
    end
  end
end

puts Maths.new(9, 47).plus
puts Maths.new(-2, 140).minus
puts Maths.new(9, 47).divide
puts Maths.new(-2, 140).multiply