# Task 6

class Maths
  OPERATORS = {
    plus: '+',
    minus: '-',
    divide: '/',
    multiply: '*'
  }.freeze

  COLORS = {
    minus: 31,
    plus: 32,
    devide: 33,
    multiply: 34
  }.freeze

  def initialize(a, b)
    @a, @b = a, b
  end

  OPERATORS.each do |method_name, operator|
    define_method method_name do
      colour = COLORS[method_name.to_sym]
      rezult = @a.send(operator, @b)
      "\e[#{colour}m#{rezult}\e[0m"
    end
  end
end


puts Maths.new(9, 47).plus
puts Maths.new(-2, 140).minus
puts Maths.new(9, 47).divide
puts Maths.new(-2, 140).multiply