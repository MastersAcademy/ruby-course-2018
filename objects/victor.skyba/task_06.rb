require_relative 'addcolor'

class Calc
  include Addcolor

  OPERATORS = {
      plus: :+,
      minus: :-,
      divide: :/,
      multiply: :*
  }.freeze

  def initialize(first, second)
    @a = first
    @b = second
  end

  OPERATORS.each do |method, operator|
    define_method method do
      c = @a.send(operator, @b)
      colorize(c, colorororo)
    end
  end

  def colorororo
    Addcolor::COLORS.values.sample
  end
end

puts Calc.new(4, 6).plus
puts Calc.new(4, 10).minus
