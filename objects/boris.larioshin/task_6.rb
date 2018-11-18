require './task_6_module'
# created class NumCalculate for task number 6
class NumCalculate
  include ColoredLine

  OPERATORS = {
    addition: '+',
    subtraction: '-',
    division: '/',
    multiplication: '*'
  }.freeze

  def initialize(first_arg, second_arg)
    @first_arg = first_arg
    @second_arg = second_arg
  end

  OPERATORS.each do |method_name, operator|
    define_method method_name do
      puts colored_text(@first_arg.send(operator, @second_arg))
    end
  end
end

test = NumCalculate.new(2, 2)
test.addition
test.subtraction
test.division
test.multiplication