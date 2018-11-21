class DynamicMath
  def initialize(first_num,second_num)
    @first_num = first_num
    @second_num = second_num
  end

  OPERATORS = {
    plus:           :+,
    minus:          :-,
    divide:         :/,
    multiplication: :*
  }.freeze

  OPERATORS.each do |method_name, operator|
    define_method method_name do
      @first_num.send(operator.to_sym, @second_num)
    rescue ZeroDivisionError
      "Cannot be divided by 0"
    end
  end
end 

dynamic_math = DynamicMath.new(3, 2)
p dynamic_math.multiplication
p dynamic_math.plus
p dynamic_math.divide
p dynamic_math.minus