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
    a / b
  end
end

var1 = Calc.new
var1.sep(10, 5)