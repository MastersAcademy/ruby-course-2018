class CalcNumbers
  def sum(*arr)
    arr.inject(0) {|sum, num|  sum + num }
  end

  def subtraction(a = gets.to_i, b = gets.to_i)
    a - b
  end
  
  def multiplication(*arr)
    arr.inject(1) {|a, num|  a * num }
  end
  
  def division(a = gets.to_i, b = gets.to_i)
    a.to_f / b
  end
end

calc = CalcNumbers.new
# p calc.sum(1,5,6,7,8)
# p calc.subtraction
# p calc.multiplication(2,2)
# p calc.division