# EvenNumbers
class EvenNumbers

  def select_even_numbers(array)
    select_numbers = array.select { |item| item.to_i.even? if ((item.is_a? (Integer)) || (item.is_a?(String))) }
  end

end

arr = ['2', 4, '6', 8, '12', 0]
puts "rezult #{EvenNumbers.new.select_even_numbers(arr)}"

