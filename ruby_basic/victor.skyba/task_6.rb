class Calc
  def sum(a, b)
    a + b
  end

  def min(a, b)
    a - b
  end

  def mult(a, b)
    a * b
  end

  def sep(a, b)
    if b == 0
      'You can not divide by zero. Please, repeat!'
    else
      a.to_f / b
    end
  end
end

p 'Please, enter first number'
a = gets.chop.to_i
p 'Please, enter second number'
b = gets.chop.to_i

var1 = Calc.new
p var1.sep(a , b)