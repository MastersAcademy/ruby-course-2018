# Implement a class for mathematical operations. Result of each operation must be displayed in a different color
# Supported operations: plus, minus, divide, multiply

module ClassMethods
  def plus
    "\e[32m#{@arg1 + @arg2}\e[0m"
  end

  def minus
    "\e[33m#{@arg1 - @arg2}\e[0m"
  end

  def divide
    return "\e[34mYou can't divide by zero\e[0m" if @arg2.zero?
    "\e[34m#{@arg1.to_f / @arg2}\e[0m"
  end

  def multiply
    "\e[31m#{@arg1 * @arg2}\e[0m"
  end
end

class Calc
  include ClassMethods

  def initialize(arg1, arg2)
    @arg1 = arg1
    @arg2 = arg2
  end
end

arg1 = ARGV[0].to_i
arg2 = ARGV[1].to_i
operation = ARGV[2]
puts Calc.new(arg1, arg2).send(operation)
