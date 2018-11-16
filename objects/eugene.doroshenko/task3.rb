#Реалізувати клас, який вибирає всі парні числа з масива. Масив може складатись не тільки з чисел.
class EvenNumbers

  def initialize
    puts "Input your array. Elements seporated by Enter"
    @array = list_of_elements
  end
    
  def list_of_elements
    array = Array.new
    element = gets.chomp
    while element != '' && element != nil
      array = array.push element
      element = gets.chomp
    end
    puts "Array is: #{array}"
    array
  end

  def even_numbers
    @array.select { |num| (num.to_i.even?) && (num == num.to_i.to_s) }    
  end

end

even_array = EvenNumbers.new
puts "Even numbers of an array are: #{even_array.even_numbers}"
