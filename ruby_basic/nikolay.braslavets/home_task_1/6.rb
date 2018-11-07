#For mentors: Not sure about the correct implementation, but it works..

num1 = ARGV[0]
num2 = ARGV[1]
operation = ARGV[2]

class Calculator
  attr_accessor :num1, :num2, :operation

  def initialize()
    @operation = 'sum'
    @num1 = 5
    @num2 = 6
  end

  def calculate()
    case @operation
    when 'sum'
        puts @num1 + @num2
      when 'sub'
        puts @num1 - @num2
      when 'mult'
        puts @num1 * @num2
      when 'div'
        puts @num1 / @num2
      else
        puts 'Not understand comand. Use: sum, sub, mult or div'
    end
  end
end

calculator  = Calculator.new
calculator.operation = operation
calculator.num1 = num1.to_i
calculator.num2 = num2.to_i
calculator.calculate
