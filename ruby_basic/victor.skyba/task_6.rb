class Calc
  def initialize
    p 'Please, enter first number'
    @a = gets.chomp.to_i
    p 'Please, enter second number'
    @b = gets.chomp.to_i
  end

  def sum
    @a + @b
  end

  def min
    @a - @b
  end

  def mult
    @a * @b
  end

  def sep
    if @b == 0
      'You can not divide by zero. Please, repeat!'
    else
      @a.to_f / @b
    end
  end
end

var1 = Calc.new
p var1.sep