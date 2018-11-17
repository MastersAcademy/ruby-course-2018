# Task 4,6
require './colors'
# Maths class
class Maths
  include Colors
  OPERATORS = {
    plus: '+',
    minus: '-',
    divide: '/',
    multiply: '*'
  }.freeze

  def initialize(a, b)
    @a = a
    @b = b
  end

  OPERATORS.each do |method_name, operator|
    define_method method_name do
      color_code = COLORS[:"#{method_name}"]
      maths = @a.send(operator, @b)
      "\e[#{color_code}m#{maths}\e[0m"
    end
  end
end

# puts Maths.instance_methods.sort
puts Maths.new(4, 6).plus
puts Maths.new(4, 10).minus
