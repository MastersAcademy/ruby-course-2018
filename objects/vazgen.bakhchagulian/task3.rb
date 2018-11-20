module EvenNumbers
  def even_numbers
    select { |f| f % 2 == 0 }
  end
end

class Array
  include EvenNumbers
end

puts [0,1,2,3,4,5,6,7,8,9].even_numbers.join(' ')