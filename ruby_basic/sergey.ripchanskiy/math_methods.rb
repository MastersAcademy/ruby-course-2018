# TASK #6. The script that return arithmetic result
class MathArray
  @params = ARGV
  @operand1 = @params[0].to_i
  @operand2 = @params[1].to_i
  @math_method = @params[2]

  def self.command_panel
    puts self.send(@math_method.to_sym)
  end

  def self.addition
    puts "addition: #{@operand1} + #{@operand2} = #{@operand1 + @operand2}"
  end

  def self.subtraction
    puts "subtraction: #{@operand1} - #{@operand2} = #{@operand1 - @operand2}"
  end

  def self.multiplication
    puts "multiplication: #{@operand1} * #{@operand2} = #{@operand1 * @operand2}"
  end

  def self.division
    puts "division: #{@operand1} / #{@operand2} = #{(@operand1.to_f / @operand2)}"
  end
end
MathArray.command_panel
# type ruby math_methods.rb 2 5 division  / addition ...
