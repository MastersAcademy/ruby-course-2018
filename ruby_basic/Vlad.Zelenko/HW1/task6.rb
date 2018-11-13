# class CalcNumbers
#   attr_reader :a, :b

#   def initialize(a, b)
#     @a = a.to_i
#     @b = b.to_i
#   end

#   def sum
#     a + b
#   end

#   def subtraction
#     a - b
#   end
  
#   def multiplication
#   end
  
#   def division
#     a.to_f / b
#   end
# end

# calc = CalcNumbers.new(gets, gets)
# p calc.sum
# p calc.subtraction
# p calc.multiplication
# p calc.division


class CalcNumbers
  def initialize(arr)
    @arr = arr
    @a = @arr[0].to_i
    @b = @arr[1].to_i
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
    @a.to_f / @b
  end
end

calc = CalcNumbers.new(ARGV)
p calc.sum
p calc.subtraction
p calc.multiplication
p calc.division
