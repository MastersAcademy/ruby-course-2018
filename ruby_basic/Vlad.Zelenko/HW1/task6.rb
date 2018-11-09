class CalcNumbers
  def sum(a = gets.to_i, b = gets.to_i)
    a + b
  end

  def subtraction(a = gets.to_i, b = gets.to_i)
    a - b
  end
  
  def multiplication(a = gets.to_i, b = gets.to_i)
    a * b
  end
  
  def division(a = gets.to_i, b = gets.to_i)
    a.to_f / b
  end
end

calc = CalcNumbers.new
p calc.sum
# p calc.subtraction
# p calc.multiplication
# p calc.division
