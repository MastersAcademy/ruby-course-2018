# Скрипт створює клас для роботи з числами. Треба реалізувати в класі методи
# суми, різниці, ділення, множення
# Input example: ruby yourscript.rb 5 10 sum

class Numbers
  def initialize(one, two)
    @first_number = one.to_i
    @second_number = two.to_i
  end

  def sum
    @first_number + @second_number
  end

  def subtraction
    @first_number - @second_number
  end

  def multiplication
    @first_number * @second_number
  end

  def division
    @first_number / @second_number
  end
end

arif = Numbers.new(ARGV[0], ARGV[1])

if ARGV.length != 3
  puts 'We need exactly 3 arguments!'
  exit
end
if arif.respond_to?(ARGV[2])
  p arif.send(ARGV[2])
else
  p 'Error in the third argument! Available arguments is: sum, subtraction, multiplication, division.'
end
