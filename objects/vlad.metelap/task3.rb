class EvenNumbers

  def select_even_numbers(array)
    array.select {|item| (item.to_i.even?) && ((item.is_a? (Integer)) || (item.is_a?(String)))}
  end
end

array_param = ['2', 3, '5', 8, '12', 0]
puts "rezult #{EvenNumbers.new.select_even_numbers(array_param)}"

