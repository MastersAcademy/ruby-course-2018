class EvenNumbers

  def select_even_numbers(array)
    array.map!(&:to_i)
    array.select{|item| item.even?}
  end
end

array_param = ['2', 3, '5', 8, '12', 0]
puts "rezult #{EvenNumbers.new.select_even_numbers(array_param)}"

