class Calc

  def initialize(a, b)
    @first_arg = a
    @second_arg = b
  end

  def sum
    @first_arg + @second_arg
  end

  def diff
    @first_arg - @second_arg
  end

  def division
    @first_arg / @second_arg
  end

  def multi
    @first_arg * @second_arg
  end
end

first = ARGV[0].to_f
second = ARGV[1].to_f
action = ARGV[2]
num = Calc.new(first, second)
if num.class.method_defined?(action)
  puts num.send(action)
else
  puts 'Method not defined'
end
