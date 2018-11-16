# Implement a class for mathematical operations. The methods must be declared dynamically.
# Supported operations: plus, minus, divide, multiply

class Calc
  OPERATORS = {
    plus:     '+',
    minus:    '-',
    divide:   '/',
    multiply: '*'
  }.freeze

  OPERATORS.each do |method_name, operator|
    define_method method_name do
      @arg1.send(operator, @arg2)
    end
  end

  def initialize(arg1, arg2)
    @arg1 = arg1
    @arg2 = arg2
  end
end

arg1   = ARGV[0].to_i
arg2   = ARGV[1].to_i
method = ARGV[2]
puts Calc.new(arg1, arg2).send(method)
