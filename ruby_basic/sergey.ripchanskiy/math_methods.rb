# TASK #6. The script that return arithmetic result
class MathArray
  def initialize
    @params = ARGV
  end

  def command_panel
    @operand1 = @params[0].to_i
    @operand2 = @params[1].to_i
    math_method = @params[2]
    send math_method
  end

  def addition
    "addition: #{@operand1} + #{@operand2} = #{@operand1 + @operand2}"
  end

  def subtraction
    "subtraction: #{@operand1} - #{@operand2} = #{@operand1 - @operand2}"
  end

  def multiplication
    "multiplication: #{@operand1} * #{@operand2} = #{@operand1 * @operand2}"
  end

  def division
    "division: #{@operand1} / #{@operand2} = #{(@operand1.to_f / @operand2)}"
  end
end
puts MathArray.new.command_panel
# type ruby math_methods.rb 2 5 division  / addition ...
