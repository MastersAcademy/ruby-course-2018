class MathMethod
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
      @first_arg.send(operator, @second_arg)
    end
  end
end
