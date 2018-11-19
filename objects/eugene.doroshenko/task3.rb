class EvenNumbers

  def initialize
    @array = list_of_elements
  end
    
  def list_of_elements
    array = Array.new
    puts "Input your array. Elements seporated by Enter"
    element = gets.chomp
    while element != '' && element != nil
      array = array.push element
      element = gets.chomp
    end
    puts "Your array is: #{array}"
    array
  end

  def even_numbers
    @array.select do |num| 
      converted_num = num.to_i
      num == converted_num.to_s && converted_num.even?
    end    
  end

end

even_array = EvenNumbers.new
puts "Even numbers of an array are: #{even_array.even_numbers}"
