# EvenNumbers
class EvenNumbers
  def select_even_numbers(array)
    select_numbers = array.select { |item| item.is_a? Integer }
    select_numbers.select { |number| (number % 2).zero? }
  end
end

arr = [1, 4, 6, 8, 'Justin Biber', 'Ozzy Osborne', 17]
puts EvenNumbers.new.select_even_numbers(arr)
