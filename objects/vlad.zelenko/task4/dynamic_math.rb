class DynamicMath
  def initialize(num_1,num_2)
    @num_1 = num_1
    @num_2 = num_2
  end

  OPERATORS = {
    plus:           :+,
    minus:          :-,
    divide:         :/,
    multiplication: :*
  }.freeze

  OPERATORS.each do |method_name, operator|
    define_method method_name do
      @num_1.send(operator.to_sym, @num_2)
    end
  end
end 

dynamic_math = DynamicMath.new(2, 3)
p dynamic_math.multiplication
p dynamic_math.plus
p dynamic_math.divide
p dynamic_math.minus