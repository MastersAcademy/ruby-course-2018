# Implement a class for mathematical operations. Result of each operation must be displayed in a different color
# Supported operations: plus, minus, divide, multiply

require_relative 'math_operations'

class Calc
  include MathOperations

  def initialize(arg1, arg2)
    @arg1 = arg1
    @arg2 = arg2
  end
end

arg1      = ARGV[0].to_i
arg2      = ARGV[1].to_i
operation = ARGV[2]
puts Calc.new(arg1, arg2).send(operation)
