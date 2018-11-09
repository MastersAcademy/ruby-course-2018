# Скрипт створює клас для роботи з числами. Треба реалізувати в класі методи суми, різниці, ділення, множення
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
    arg1/arg2
  end
end

calc = Calc.new
arg1 = gets.chomp.to_i
arg2 = gets.chomp.to_i
method = gets.chomp
puts calc.send(method, arg1, arg2)
