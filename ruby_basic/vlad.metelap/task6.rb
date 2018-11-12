class Task6

  def sum(a,b)
    a+b
  end

  def dif(a,b)
    a-b
  end

  def multi(a,b)
    a*b
  end

  def div(a,b)
    b!=0 ? a/b :0
  end

  def case_method(a, b, operand)
    case operand
    when "sum"
      sum(a,b)
    when "dif"
      dif(a,b)
    when "multi"
      multi(a,b)
    when "div"
      div(a,b)
    end
  end
end
a = ARGV[0]
b = ARGV[1]
operand = ARGV[2]
res = Task6.new.case_method(a.to_f,b.to_f ,operand.to_s)
puts res