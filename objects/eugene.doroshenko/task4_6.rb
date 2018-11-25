require_relative "math_operations_list"

class MathOperations
  extend MathMethodsAndOperators

  def initialize
    puts "Input first element"
    @el1 = gets.chomp.to_i
    puts "Input second element"
    @el2 = gets.chomp.to_i
  end

  operators_list.each do |method_name, operator|
    define_method method_name do
      method_result = @el1.send(operator, @el2).to_f
      "\e[#{rand(31..37)}m#{method_result}\e[0m"
    end
  end

end

result = MathOperations.new
puts "Addition result is: #{result.plus}"
puts "Substruction result is: #{result.minus}"
puts "Division result is #{result.divide}"
puts "Multiplication result is #{result.multiply}"
