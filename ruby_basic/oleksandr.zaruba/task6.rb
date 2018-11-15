# Input example: ruby yourscript.rb 5 10 sum

class Numbers
  def initialize(first_number, second_number)
    @first_number = first_number.to_i
    @second_number = second_number.to_i
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

if ARGV.length != 3
  puts 'We need exactly 3 arguments!'
  exit
end

namber_one = ARGV[0]
namber_two = ARGV[1]
arif_func = ARGV[2]
arif = Numbers.new(namber_one, namber_two)
if arif.respond_to?(arif_func)
  p arif.send(arif_func)
else
  p 'Error in the third argument! Available arguments is: sum, subtraction, multiplication, division.'
end
