# Script creates a class for working with numbers. It is necessary to realize in the class methods of sum, difference, division, multiplication
# Input example: ruby yourscript.rb 5 10 sum

class Calc
  def sum(arg1, arg2)
    arg1 + arg2
  end

  def sub(arg1, arg2)
    arg1 - arg2
  end

  def mult(arg1, arg2)
    arg1 * arg2
  end

  def div(arg1, arg2)
    return 'You can\'t divide by zero!' if arg2.zero?
    arg1.to_f / arg2
  end
end

calc = Calc.new
arg1 = gets.chomp.to_i
arg2 = gets.chomp.to_i
method = gets.chomp
puts calc.send(method, arg1, arg2)
