class CalcNumbers
  def initialize(num_1, num_2)
    @a = num_1.to_i
    @b = num_2.to_i
  end

  def sum
    @a + @b
  end

  def subtraction
    @a - @b
  end
  
  def multiplication
    @a * @b
  end
  
  def division
    @a / @b
  rescue ZeroDivisionError
    0
  end
end

calc = CalcNumbers.new(*ARGV)
p calc.sum
p calc.subtraction
p calc.multiplication
p calc.division