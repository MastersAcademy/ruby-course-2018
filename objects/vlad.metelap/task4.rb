# Task 4
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
    @a = a
    @b = b
  end

# puts Maths.instance_methods.sort
puts Maths.new(4, 6).plus
puts Maths.new(4, 10).minus
