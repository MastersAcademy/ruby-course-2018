# EvenNumbers
class EvenNumbers
  def select_even_numbers(array)
    select_numbers = array.map(&:to_i)
    select_numbers.select { |number| (number % 2).zero? }
  end
end

arr = [1, 4, 6, 8, '18', '11', 17]
puts EvenNumbers.new.select_even_numbers(arr)
